#ifndef RECTANGLE_H
#define RECTANGLE_H

#include <iostream>

class rectangle{
    double width, height;
public:
    rectangle(double w, double h) : width(w), height(h){}
    double get_width() const { return this->width; }
    double get_height() const { return this->height; }
};

std::ostream &operator <<(std::ostream&, rectangle const &);

#endif
