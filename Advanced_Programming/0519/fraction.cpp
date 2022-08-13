#include "fraction.h"
using namespace std;

fraction& fraction::operator *=(fraction const &other){
    this->num *= other.num;
    this->denom *= other.denom;
    return *this;
}

fraction fraction::operator *(fraction const &other) const{
    fraction res = *this;
    return res *= other;
}

fraction& fraction::operator +=(fraction const &other){
    unsigned new_denom = this->denom * other.denom;
    this->num = this->num * other.denom + other.num * this->denom;
    this->denom = new_denom;
    return *this;
}

fraction fraction::operator +(fraction const &other) const{
    fraction res = *this;
    return res += other;
}

ostream& operator <<(ostream &out, fraction const &f){
    return out << f.num << '/' << f.denom;
}
