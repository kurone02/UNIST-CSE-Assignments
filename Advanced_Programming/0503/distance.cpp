#include <iostream>
#include <cmath>

struct TPoints{
    double x, y;
};

double distance(TPoints p1, TPoints p2){
    double x_diff = p1.x - p2.x;
    double y_diff = p1.y - p2.y;
    return sqrt(x_diff * x_diff + y_diff * y_diff);
}

int main(){
    using namespace std;
    TPoints p;
    cout << "x: " << flush;
    cin >> p.x;
    cout << "y: " << flush;
    cin >> p.y;
    TPoints origin = {0, 0};
    cout << "Distance: " << distance(origin, p) << endl;
    return 0;
}
