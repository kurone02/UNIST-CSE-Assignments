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
#include <stack>
#include <set>
#include <map>

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

public:
  Coordinate(int x, int y) : x(x), y(y) {}

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
};

bool isInVisited(set<pair<int,int>> visited, int current_x, int current_y){
  if(visited.empty()){
    return false;
  }
  pair<int,int> element = {current_x, current_y};
  return visited.find(element) != visited.end();
}

class DepthFirstSearchAgent {
  int x, y;
  int depth;
  map<pair<int,int>, tuple<bool,bool,bool,bool>> coorWall;
  map<pair<int,int>,pair<int,int>> path; 
  map<pair<int,int>,int> nodeDepth;
  stack<pair<int,int>> theStack;
  set<pair<int,int>> theSet;

public:

  DepthFirstSearchAgent(int size_x, int size_y) {
    x = 0;
    y = 0;
    depth = 1;
    nodeDepth[{0,0}] = -1;
    theStack.push({0,0}); 
  }

  optional<Coordinate> move(bool isExit, bool hasWallSouth, bool hasWallNorth, bool hasWallEast, bool hasWallWest) {
    if(!isExit){
      coorWall[{theStack.top().first,theStack.top().second}] = make_tuple(hasWallWest,hasWallEast,hasWallNorth,hasWallSouth);
      
      x = theStack.top().first; 
      y = theStack.top().second;

      //cerr << x << " " << y << "->" << nodeDepth[{x,y}] << endl;

      theStack.pop();
      if(nodeDepth[{x,y}] + 1 <= depth) {
        if(!get<0>(coorWall[{x, y}]) && (nodeDepth.find({x-1,y}) == nodeDepth.end() || nodeDepth[{x-1,y}] > nodeDepth[{x,y}] + 1)){  //W
          theStack.push({x-1,y});
          nodeDepth[{x-1,y}] = nodeDepth[{x,y}] + 1;
          path[{x-1,y}] = {x,y};
        }
        if(!get<1>(coorWall[{x, y}]) && (nodeDepth.find({x+1,y}) == nodeDepth.end() || nodeDepth[{x+1,y}] > nodeDepth[{x,y}] + 1)){  //E
          theStack.push({x+1,y});
          nodeDepth[{x+1,y}] = nodeDepth[{x,y}] + 1;
          path[{x+1,y}] = {x,y};   
        }
        if(!get<2>(coorWall[{x, y}]) && (nodeDepth.find({x,y-1}) == nodeDepth.end() || nodeDepth[{x,y-1}] > nodeDepth[{x,y}] + 1)){ //N
          theStack.push({x,y-1});
          nodeDepth[{x,y-1}] = nodeDepth[{x,y}] + 1;
          path[{x,y-1}] = {x,y};
        }
        if(!get<3>(coorWall[{x, y}]) && (nodeDepth.find({x,y+1}) == nodeDepth.end() || nodeDepth[{x,y+1}] > nodeDepth[{x,y}] + 1)){ //S
          theStack.push({x,y+1});
          nodeDepth[{x,y+1}] = nodeDepth[{x,y}] + 1;
          path[{x,y+1}] = {x,y};
        }
      }

      if(theStack.empty()){
        nodeDepth.clear();
        path.clear();
        path[{0,0}] = {0,0};
        nodeDepth[{0,0}] = 0;
        depth +=1;
        theStack.push({0,0}); 
      }
      return Coordinate(theStack.top().first,theStack.top().second);
    }
    else{
      return {};
    }
  }

  list<Coordinate> getShortestPath() {
    list<Coordinate> shortestPath;
    shortestPath.push_front(Coordinate(theStack.top().first,theStack.top().second));
    pair <int,int> front_element = {shortestPath.front().getX(),shortestPath.front().getY()};
    while(!(front_element.first == 0 && front_element.second == 0)){
      // if(nodeDepth[{front_element.first,front_element.second}] - nodeDepth[{path[front_element].first,path[front_element].second}] == 1){
      //   shortestPath.push_front(Coordinate(path[front_element].first,path[front_element].second));
      // }
      shortestPath.push_front(Coordinate(path[front_element].first,path[front_element].second));
      cerr << front_element.first << " " << front_element.second << "->" << nodeDepth[{front_element.first,front_element.second}] << endl;
      front_element = {path[front_element].first,path[front_element].second};
    }
    return shortestPath;
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

