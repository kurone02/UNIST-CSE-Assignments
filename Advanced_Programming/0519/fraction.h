#ifndef FRACTION_H
#define FRACTION_H

#include <iostream>

class fraction{
    int num;
    unsigned denom;
public:
    fraction(int num, unsigned denom=1): num(num), denom(denom){}
    // Copy constructor
    fraction(fraction const &f): num(f.num), denom(f.denom){} 
    fraction& operator *=(fraction const &);
    fraction operator *(fraction const &) const;
    fraction& operator +=(fraction const &);
    fraction operator +(fraction const &) const;
    fraction& operator -=(fraction const &other) { return *this += -other;  };
    fraction operator -(fraction const &other) const { return *this + -other;  };
    fraction operator -() const { return fraction(-num, denom); }

    friend std::ostream& operator <<(std::ostream&, fraction const &);
};

#endif
