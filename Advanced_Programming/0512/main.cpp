#include <iostream>
#include <cassert>
#define INT number::type::integer_type
#define REAL number::type::real_type
#define COMPLEX number::type::complex_type
using namespace std;

struct number{
    enum class type { integer_type, real_type, complex_type } type;
    union {
        int int_value;
        double real_value;
        struct{
            double r, i;
        } complex_value;
    };
};

static void print_number(number const &n){
    switch(n.type){
    case INT:
        cout << n.int_value << endl;
        break;
    case REAL:
        cout << n.real_value << endl;
        break;
    case COMPLEX: 
        cout << n.complex_value.r;
        if(n.complex_value.i < 0) cout << " - " << -n.complex_value.i << "i" << endl;
        else cout << " + " << n.complex_value.i << "i" << endl;
        break;
    }
}

static double real_value(number const &n){
    switch(n.type){
    case INT:
        return (double)n.int_value;
    case REAL:
        return n.real_value;
    case COMPLEX:
        return n.complex_value.r;
    }
    return 0;
}

static double img_value(number const &n){
    switch(n.type){
    case INT:
        return 0;
    case REAL:
        return 0;
    case COMPLEX:
        return n.complex_value.i;
    }
    return 0;
}

static number operator +(number const &x, number const &y){
    number z;
    if(x.type == COMPLEX || y.type == COMPLEX){
        z.type = COMPLEX;
        z.complex_value.r = real_value(x) + real_value(y);
        z.complex_value.i = img_value(x) + img_value(y);
        return z;
    }
    if(x.type == COMPLEX || y.type == REAL){
        z.type = REAL;
        z.real_value = real_value(x) + real_value(y);
        return z;
    }
    assert(x.type == INT); assert(y.type == INT);
    z.type = INT;
    z.int_value = x.int_value + y.int_value;
    return z;
}

int main(){

    number n;
    n.type = COMPLEX;
    n.complex_value.r = 1.5;
    n.complex_value.i = -0.7;
    print_number(n);

    number x, y;
    x.type = COMPLEX;
    x.complex_value = {1.4, -12};
    y.type = COMPLEX;
    y.complex_value = {13.2, 12.4};
    print_number(x + y);

    number m, k;
    m.type = INT;
    k.type = INT;
    m.int_value = 12;
    k.int_value = 42;
    print_number(m + k);

    return 0;
}
