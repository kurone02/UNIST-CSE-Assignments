/*
    Student name: Nguyen Minh Duc
    Student ID: 20202026

    This is random-gen.cpp, where it contains the implementations
    of larger class methods
*/

#include "random-gen.h"

double die::between(double l, double r){
    double ratio = (double)this->roll() / (this->get_num_sides() - 1);
    double len = r - l;
    return l + ratio * len;
}

int biased_die::roll() const {
    int random_side = this->die::roll();
    if(random_side != this->biased_side) return random_side;
    return this->die::roll();
}

double mix::between(double l, double r){
    double first_random = this->rng1->between(l, r);
    double second_random = this->rng2->between(l, r);
    return (first_random + second_random) / 2;
}