#ifndef LIST_H
#define LIST_H

#include<cstddef>

template<typename T>
class list{
    T* elements;
    size_t num_elements;
public:
    list(): elements(new T[0]), num_elements(0){}

    // rule of 3
    ~list(){ delete[] this->elements; }
    list(list const &);
    list& operator =(list const &);

    size_t length() const { return this->num_elements; }
    T& operator [](size_t);
};

#endif
