/*
    Student name: Nguyen Minh Duc
    Student ID: 20202026

    This is random-gen.h, where it contains the class descriptions, 
    method prototypes, method “one-liners”, and any templated code.
*/

#include <cstdlib>
#include <cstddef>
#include <vector>
#include <memory>

class random_gen {
public:
    random_gen() {}
    virtual double between(double, double) = 0;
};

typedef std::shared_ptr<random_gen> rng_ptr;

class die : public random_gen {
    int num_sides;
protected:
    virtual int roll() const { return rand() % this->num_sides; }
public:
    die(int x=0) : num_sides(x) {}
    int get_num_sides() const { return this->num_sides; }
    virtual double between(double, double);
};

class biased_die : public die {
    int biased_side;
protected:
    virtual int roll() const;
public:
    biased_die(int x=0, int y=0) : die(x), biased_side(y) {}
};

template<typename T>
class predetermined : public random_gen {
    size_t current_ele;
    std::vector<T> elements;
    T get_min(){
        T res = this->elements[0];
        for(T x: this->elements){
            if(res > x) res = x;
        }
        return res;
    }
    T get_max(){
        T res = this->elements[0];
        for(T x: this->elements){
            if(res < x) res = x;
        }
        return res;
    }
public:
    predetermined() : current_ele(0), elements(std::vector<T>()) {}
    predetermined(std::vector<T> x) : current_ele(0), elements(x) {}
    void add_number(T const &x){ this->elements.push_back(x); }
    virtual double between(double l, double r){
        T minimum = this->get_min();
        T maximum = this->get_max();
        double ratio = (double)(this->elements[current_ele] - minimum) / (double)(maximum - minimum);
        double len = r - l;
        this->current_ele++;
        if(this->current_ele >= this->elements.size()){
            this->current_ele = 0;
        }
        return l + ratio * len;
    }
};

class mix : public random_gen {
    rng_ptr rng1, rng2;
public:
    mix() : rng1(nullptr), rng2(nullptr) {}
    mix(rng_ptr x, rng_ptr y) : rng1(x), rng2(y) {}
    virtual double between(double, double);
};