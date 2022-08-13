#include <iostream>

using namespace std;

class number {
protected:
    virtual double real_value() const = 0;
    virtual double imaginary_value() const;
public:
    virtual complex_number operator +(number const &other) const{
        double r = this->real_value() + other.real_value();
        double i = this->imaginary_value() + other.imaginary_value();
        return complex_number(r, i);
    }
};

class integer : public number {
    int val;
public:
    integer(int v): val(v) {}
    virtual double real_value() const { return this->val; }
    virtual double imaginary_value() const { return 0; }
};

class real : public number {
    double val;
public:
    integer(double v): val(v) {}
    virtual double real_value() const { return this->val; }
    virtual double imaginary_value() const { return 0; }
};

class complex_number : public real {
    double imag;
public:
    complex_number(double r, double i): real(r), imag(i) {}
    virtual double imaginary_value() const { return this->imag; }
}
