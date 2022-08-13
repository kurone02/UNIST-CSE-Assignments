#ifndef SET_H
#define SET_H

#include <cstddef>

class integer_set{
    int *elements;
    size_t num_elements;
public:
    integer_set();
    integer_set(integer_set const &);
    ~integer_set(){ delete[] this->elements; }

    integer_set& operator +=(int); // insert an int into the set
    integer_set& operator -=(int); // remove an int into the set
    integer_set& operator =(integer_set const &);
    bool operator [](int) const;

};

#endif
