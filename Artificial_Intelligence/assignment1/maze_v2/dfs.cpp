//
// dfs.cpp - Version 1.0
//
// Please write your name, your student ID, and your email address here.
// Moreover, please describe the implementation of your functions here.
// You will have to submit this file.
//

#include <iostream>
#include <list>
#include <string>
#include <cstdlib>
#include <queue>
#include <stack>

// ---------------------------------------------------------------------
// Include the optional header with backward compatibility
// see http://codereview.stackexchange.com/questions/136350/seamlessly-migrating-experimental-optional-to-optional
#if __has_include(<optional>)
#   include <optional>
namespace stdx {
  using namespace ::std;
}
#elif __has_include(<experimental/optional>)
#   include <experimental/optional>
namespace stdx {
    using namespace ::std;
    using namespace ::std::experimental;
}
#else
#   error <experimental/optional> and <optional> not found
#endif

using namespace stdx;
// ---------------------------------------------------------------------


#define MAX_SIZE 300


class Coordinate {

    int x, y;
    bool hasWallSouth, hasWallNorth, hasWallEast, hasWallWest;

public:
    Coordinate(int x=0, int y=0,
               bool hasWallSouth=false, bool hasWallNorth=false, bool hasWallEast=false, bool hasWallWest=false) 
        : x(x), y(y),
          hasWallSouth(false), hasWallNorth(false), hasWallEast(false), hasWallWest(false) {}

    int getX() const {
        return x;
    }

    int getY() const {
        return y;
    }

    bool operator==(const Coordinate &rhs) const {
        return x == rhs.x && y == rhs.y;
    }

    bool operator!=(const Coordinate &rhs) const {
        return !(rhs == *this);
    }

    bool getWallSouth() const { return this->hasWallSouth; }
    bool getWallNorth() const { return this->hasWallNorth; }
    bool getWallEast() const { return this->hasWallEast; }
    bool getWallWest() const { return this->hasWallWest; }

    void setWallSouth(const bool &val) { this->hasWallSouth = val; }
    void setWallNorth(const bool &val) { this->hasWallNorth = val; }
    void setWallEast(const bool &val) { this->hasWallEast = val; }
    void setWallWest(const bool &val) { this->hasWallWest = val; }
};


class DepthFirstSearchAgent {

    int size_x, size_y;
    int threshold;
    bool reached_goal;
    Coordinate goal, current_position;
    vector< vector<int> > distance;
    vector< vector< optional<Coordinate> > > trace;
    stack<Coordinate> open_list;
    stack<Coordinate> closed_list;

    // Mark the position visitted
    void update_distance(const Coordinate &position, const optional<Coordinate> &previous) {
        // Since coordinates could be negative, it is needed to add offsets of size_x and size_y
        if(previous) {
            this->distance[position.getX() + size_x][position.getY() + size_y] = this->get_distance(*previous) + 1;
        } else {
            this->distance[position.getX() + size_x][position.getY() + size_y] = 0;
        }
        this->trace[position.getX() + size_x][position.getY() + size_y] = previous;
    }

    // Check if the position (x, y) has been visitted yet
    int get_distance(const Coordinate &position) const {
        // Since coordinates could be negative, it is needed to add offsets of size_x and size_y
        return this->distance[position.getX() + size_x][position.getY() + size_y];
    }

    // Get the parrent of the position (i.e. the node that expands it)
    optional<Coordinate> get_trace(const Coordinate &position) const {
        return this->trace[position.getX() + size_x][position.getY() + size_y];
    }

    bool promissing(const Coordinate &position, const Coordinate &previous) {
        int potential_distance = this->get_distance(previous) + 1;
        if(this->get_distance(previous) == this->threshold) return false;
        if(this->get_distance(position) == -1) return true;
        bool is_promissing = potential_distance < this->get_distance(position);
        if(this->reached_goal) {
            is_promissing = is_promissing && min(potential_distance, this->get_distance(position)) < this->get_distance(this->goal);
        }
        return is_promissing;
    }

    // Expand to the next position
    void expand(const Coordinate &position, const optional<Coordinate> &previous) {
        // If the position has not been visitted, add to the frontier
        if(this->promissing(position, *previous)) {
            // this->open_list.push(position);
            this->closed_list.push(position);
            this->update_distance(position, previous);
        }
    }

    void reset() {
        // Initially, every cell is not visitted yet
        // Here, I initialize 2D array visitted[x][y] = true,  if (x, y) has been visitted
        //                                            = false, otherwise
        for(auto &row: this->distance) {
            fill(row.begin(), row.end(), -1);
        }

        // Here, I initialize 2D array trace[x][y] = (a, b)),  if (x, y) has been explored by (a, b)
        //                                         = false, otherwise
        for(auto &row: this->trace) {
            fill(row.begin(), row.end(), optional<Coordinate>());
        }
    }

public:

    DepthFirstSearchAgent(int size_x, int size_y): size_x(size_x), size_y(size_y) {

        // Initially, every cell is not visitted yet
        // Here, I initialize 2D array visitted[x][y] = true,  if (x, y) has been visitted
        //                                            = false, otherwise
        this->distance.resize(2 * size_x + 1);
        for(auto &row: this->distance) {
            row.resize(2 * size_y + 1, -1);
        }

        // Here, I initialize 2D array trace[x][y] = (a, b)),  if (x, y) has been explored by (a, b)
        //                                         = false, otherwise
        this->trace.resize(2 * size_x + 1);
        for(auto &row: this->trace) {
            row.resize(2 * size_y + 1);
        }
        this->update_distance(Coordinate(0, 0), optional<Coordinate>());
        this->closed_list.push(Coordinate(0, 0));
        this->threshold = 1;
        this->reached_goal = false;
    }

    optional<Coordinate> move(bool isExit, bool hasWallSouth, bool hasWallNorth, bool hasWallEast, bool hasWallWest) {

        // If the agent reaches the goal, return a null coordinate 
        if(isExit) {
            this->goal = current_position;
            this->reached_goal = true;
        }

        Coordinate parrent = this->closed_list.top();
        this->closed_list.pop();
        // this->open_list.pop();

        // Explore the South adjacent coordinate
        if(!hasWallSouth) {
            // If the next position has not been explored, add it to the frontier
            this->expand(Coordinate(parrent.getX(), parrent.getY() + 1), parrent);
        }

        // Explore the North adjacent coordinate
        if(!hasWallNorth) {
            this->expand(Coordinate(parrent.getX(), parrent.getY() - 1), parrent);
        }

        // Explore the East adjacent coordinate
        if(!hasWallEast) {
            this->expand(Coordinate(parrent.getX() + 1, parrent.getY()), parrent);
        }

        // Explore the West adjacent coordinate
        if(!hasWallWest) {
            this->expand(Coordinate(parrent.getX() - 1, parrent.getY()), parrent);
        }

        if(this->closed_list.empty()) {
            cerr << "YO?" << this->reached_goal << "\n";
            if(this->reached_goal) {
                return optional<Coordinate>();
            }
            this->threshold *= 2;
            this->closed_list.push(Coordinate(0, 0));
            this->reset();
            this->update_distance(Coordinate(0, 0), optional<Coordinate>());
        }

        // Update the current_position's coordinate
        this->current_position = this->closed_list.top();

        return this->current_position;
    }

    list<Coordinate> getShortestPath() {

        list<Coordinate> result;
        optional<Coordinate> current_position = this->goal;
        while(current_position) {
            result.push_front(*current_position);
            current_position = this->get_trace(*current_position);
        }

        return result;

    }

};

int main(int argc, char *argv[]) {

    int size_x, size_y;

    if (argc == 3) {
        size_x = atoi(argv[1]);
        size_y = atoi(argv[2]);
    } else {
        cerr << "Error: wrong arguments." << endl;
        return -1;  // do nothing
    }

    DepthFirstSearchAgent agent(size_x, size_y);

    while(true) {
        string s1, s2, s3, s4, s5;
        cin >> s1 >> s2 >> s3 >> s4 >> s5;

        bool isExit = (s1 != "0");
        bool hasWallSouth = (s2 != "0");
        bool hasWallNorth = (s3 != "0");
        bool hasWallEast = (s4 != "0");
        bool hasWallWest = (s5 != "0");

        auto coord = agent.move(isExit, hasWallSouth, hasWallNorth, hasWallEast, hasWallWest);

        if (coord) {
            cout << coord->getX() << " " << coord->getY() << endl;
        } else {
            break;
        }
    }

    list<Coordinate> path = agent.getShortestPath();

    cout << "PATH" << endl;
    for(auto&& coord : path) {
        cout << coord.getX() << " " << coord.getY() << endl;
    }
    cout << "END" << endl;

  return 0;
}

