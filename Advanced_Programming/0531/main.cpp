#include <iostream>
#include <cmath>

enum class color { black, red, white };

class shape {
    color co;
public:
    shape(color c): co(c) {}

    virtual double area() const { return 0; }
    virtual double perimeter() const { return 0; }
};

class circle : public shape {
    double radius;
public:
    circle(color c, double r): shape(c), radius(r) {}
    virtual double area() const {
        return M_PI * this->radius * this->radius;
    }
    virtual double perimeter() const {
        return 2 * M_PI * this->radius;
    }
};

class triangle : public shape {
    double base, height;
public:
    triangle(color c, double b, double h): shape(c), base(b), height(h) {}
    virtual double area() const {
        return this->base * this->height / 2;
    }
};

int main(){
    using namespace std;
    
    triangle t(color::black, 3, 4);
    circle c(color::white, 5);
    shape &s = c;

    cout << t.area() << ' ' << s.area() << endl;
    cout << t.perimeter() << ' ' << s.perimeter() << endl;

    return 0;
}
