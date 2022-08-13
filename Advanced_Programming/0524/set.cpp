#include "set.h"

integer_set::integer_set(): elements(new int[0]), num_elements(0){}

integer_set::integer_set(integer_set const &other)
        : elements(new int[other.num_elements]), num_elements(other.num_elements){
    for(size_t i = 0; i < this->num_elements; i++){
        this->elements[i] = other.elements[i];
    }
}

integer_set& integer_set::operator +=(int val){
    if((*this)[val]) return *this;
    int *bigger = new int[this->num_elements + 1];
    for(size_t i = 0; i < this->num_elements; i++){
        bigger[i] = this->elements[i];
    }
    bigger[this->num_elements] = val;
    this->num_elements++;
    delete[] this->elements;
    this->elements = bigger;
    return *this;
}

integer_set& integer_set::operator =(integer_set const &other){
    if(this->num_elements < other.num_elements){
        delete[] this->elements;
        this->elements = new int[other.num_elements];
    }
    this->num_elements = other.num_elements;
    for(size_t i = 0; i < this->num_elements; i++){
        this->elements[i] = other.elements[i];
    }
    return *this;
}

integer_set& integer_set::operator -=(int val){
    if(!(*this)[val]) return *this;
    if(this->num_elements == 0) return *this;
    int *val_location = this->elements;
    for(size_t i = 0; i < this->num_elements; i++){
        if(this->elements[i] == val){
            val_location = &this->elements[i];
        }
    }
    *val_location = this->elements[this->num_elements - 1];
    this->num_elements--;
    return *this;
}

bool integer_set::operator [](int val) const{
    for(size_t i = 0; i < this->num_elements; i++){
        if(this->elements[i] == val) return true;
    }
    return false;
}
