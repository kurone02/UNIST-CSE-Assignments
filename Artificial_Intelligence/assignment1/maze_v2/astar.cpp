//
// astar.cpp - Version 1.0
//
// Please write your name, your student ID, and your email address here.
// Moreover, please describe the implementation of your functions here.
// You will have to submit this file.
// 
// Student Name: Nguyen Minh Duc
// Student ID: 20202026
//

/**
 * For the BFS, we need to maintain a data structure (queue) to store the frontier
 * The nodes are explored in an increasing order of distance from the starting point
 * Thus, it is guarentee to find the optimal answer when BFS first finds the goal point
 * 
 * First, the starting point will be added into the queue.
 * While we are not at the destination, keep expanding the adjacent positions and push them into queue
 * By doing this, we are guarentee to traverse the maze in an increasing order of distance from the starting point
 * 
 * Moreover, we also need to maintain two 2D arrays (visitted[x][y] and trace[x][y])
 * visitted[x][y] indicate whether the position (x, y) has been explored or not
 * trace[x][y] denotes the parrent of the node (x, y) in the BFS tree
 * 
 * When we need the shortest path, we just need to go backward to the root by using the `trace` array
 * 
*/

#include <iostream>
#include <list>
#include <string>
#include <cstdlib>
#include <queue>

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
    int cost;
    double heuristic;

    bool hasWallSouth, hasWallNorth, hasWallEast, hasWallWest;

public:
    Coordinate(int x=0, int y=0, int cost=-1, double heuristic=0,
               bool hasWallSouth=false, bool hasWallNorth=false, bool hasWallEast=false, bool hasWallWest=false) 
        : x(x), y(y), cost(cost), heuristic(heuristic),
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

    double getHeuristic() const { return this->heuristic; }
    void setHeuristic(const double &val) { this->heuristic = val; }

    int getCost() const { return this->cost; }
    void increaseCost() { this->cost++; }

    double getEvaluation() const { return this->cost + this->heuristic; }

    bool operator<(const Coordinate &rhs) const {
        return this->getEvaluation() > rhs.getEvaluation();
    }
    
};


class AStarFirstSearchAgent {

    int size_x, size_y;
    Coordinate goal;
    vector< vector<bool> > visitted;
    vector< vector< optional<Coordinate> > > trace;
    priority_queue<Coordinate> open_list;
    queue<Coordinate> closed_list;

    // Mark the position visitted
    void mark_visitted(const Coordinate &position, const optional<Coordinate> &previous) {
        // Since coordinates could be negative, it is needed to add offsets of size_x and size_y
        this->visitted[position.getX() + size_x][position.getY() + size_y] = true;
        this->trace[position.getX() + size_x][position.getY() + size_y] = previous;
    }

    // Check if the position (x, y) has been visitted yet
    bool check_visitted(const Coordinate &position) const {
        // Since coordinates could be negative, it is needed to add offsets of size_x and size_y
        return this->visitted[position.getX() + size_x][position.getY() + size_y];
    }

    // Get the parrent of the position (i.e. the node that expands it)
    optional<Coordinate> get_trace(const Coordinate &position) const {
        return this->trace[position.getX() + size_x][position.getY() + size_y];
    }

    // Expand to the next position
    void expand(const Coordinate &position, const optional<Coordinate> &previous) {
        // If the position has not been visitted, add to the frontier
        if(!check_visitted(position)) {
            this->closed_list.push(position);
            this->mark_visitted(position, previous);
        }
    }

public:

    AStarFirstSearchAgent(int size_x, int size_y): size_x(size_x), size_y(size_y) {
        // Initially, every cell is not visitted yet
        // Here, I initialize 2D array visitted[x][y] = true,  if (x, y) has been visitted
        //                                            = false, otherwise
        this->visitted.resize(2 * size_x + 1);
        for(auto &row: this->visitted) {
            row.resize(2 * size_y + 1, false);
        }

        // Here, I initialize 2D array trace[x][y] = (a, b)),  if (x, y) has been explored by (a, b)
        //                                         = false, otherwise
        this->trace.resize(2 * size_x + 1);
        for(auto &row: this->trace) {
            row.resize(2 * size_y + 1);
        }
        this->mark_visitted(Coordinate(0, 0), optional<Coordinate>());
    }

    optional<Coordinate> move(bool isExit, bool hasWallSouth, bool hasWallNorth, bool hasWallEast, bool hasWallWest, double distance) {
    
        // If the agent reaches the goal, return a null coordinate 
        if(isExit) return optional<Coordinate>();

        this->goal.setWallSouth(hasWallSouth);
        this->goal.setWallNorth(hasWallNorth);
        this->goal.setWallEast(hasWallEast);
        this->goal.setWallWest(hasWallWest);
        this->goal.setHeuristic(distance);
        this->goal.increaseCost();
        this->open_list.push(this->goal);

        while(closed_list.empty()) {
            Coordinate parrent = this->open_list.top();
            this->open_list.pop();
            // Explore the South adjacent coordinate
            if(!parrent.getWallSouth()) {
                // If the next position has not been explored, add it to the frontier
                this->expand(Coordinate(parrent.getX(), parrent.getY() + 1, parrent.getCost()), parrent);
            }

            // Explore the North adjacent coordinate
            if(!parrent.getWallNorth()) {
                this->expand(Coordinate(parrent.getX(), parrent.getY() - 1, parrent.getCost()), parrent);
            }

            // Explore the East adjacent coordinate
            if(!parrent.getWallEast()) {
                this->expand(Coordinate(parrent.getX() + 1, parrent.getY(), parrent.getCost()), parrent);
            }

            // Explore the West adjacent coordinate
            if(!parrent.getWallWest()) {
                this->expand(Coordinate(parrent.getX() - 1, parrent.getY(), parrent.getCost()), parrent);
            }
        }

        this->goal = this->closed_list.front();
        this->closed_list.pop();

        return this->goal;
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

    AStarFirstSearchAgent agent(size_x, size_y);

    while(true) {
        string s1, s2, s3, s4, s5, s6;
        cin >> s1 >> s2 >> s3 >> s4 >> s5 >> s6;

        bool isExit = (s1 != "0");
        bool hasWallSouth = (s2 != "0");
        bool hasWallNorth = (s3 != "0");
        bool hasWallEast = (s4 != "0");
        bool hasWallWest = (s5 != "0");
        double distance = stof(s6);

        auto coord = agent.move(isExit, hasWallSouth, hasWallNorth, hasWallEast, hasWallWest, distance);

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
