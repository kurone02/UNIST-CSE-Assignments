#ifndef SHAPE_H
#define SHAPE_H

#include <iostream>
#include <cmath>

const double PI = 4 * atan(1);

class shape {
protected:
	virtual void print(std::ostream&) const = 0;
public:
	virtual ~shape() {}
	virtual double area() const = 0;
	friend std::ostream &operator<<(std::ostream &, shape const &);
};

class circle : public shape {
	double radius;
protected:
	virtual void print(std::ostream&) const;
public:
	circle(double r) : radius(r) {}
	virtual double area() const { return PI * radius * radius;} 
};

class rectangle : public shape {
	double width, height;
protected:
	virtual void print(std::ostream&) const;
public:
	rectangle(double w, double h) : width(w), height(h) {}
	virtual double area() const { return width * height; }
};

shape* read_one_shape(std::istream &);

#endif
