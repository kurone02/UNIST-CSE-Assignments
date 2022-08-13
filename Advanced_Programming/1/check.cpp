/*
    Student name: Nguyen Minh Duc
    Student ID: 20202026

    This is check.cpp where it contains a main method and does unit testing.
*/

#include <iostream>
#include "functions.h"

#define check(expr, expected)\
    if(expected * 0.9999 <= expr && expr <= expected * 1.0001){\
        succeeded++;\
    } else{\
        std::cerr << #expr << " failed on line " << __LINE__ << std::endl;\
        std::cerr << "Expected " << expected << " but " << expr << " is found." << std::endl;\
        failed++;\
    }

int main(){

    int succeeded = 0, failed = 0;

    // Check the factorial function

    check(factorial(0), 1); // Boundary
    check(factorial(1), 1); // Usual
    check(factorial(2), 2); // Usual
    check(factorial(3), 6); // Usual
    check(factorial(4), 24); // Usual
    check(factorial(5), 120); // Usual
    check(factorial(6), 720); // Usual
    check(factorial(7), 5040); // Usual
    check(factorial(8), 40320); // Usual
    check(factorial(9), 362880); // Usual
    check(factorial(10), 3628800); // Usual
    check(factorial(11), 39916800); // Usual
    check(factorial(12), 479001600); // Usual
    check(factorial(13), 6227020800); // Big value
    check(factorial(16), 20922789888000); // Big value
    check(factorial(19), 121645100408832000); // Big value
    check(factorial(20), 2432902008176640000); // Big value
    check(factorial(100), 9.3326215443944e157); // Really big value

    check(probability(12, 12), 0.999946277); // Boundary
    check(probability(3, 6), 0.444444444); // Usual
    check(probability(1, 6), 0); // Boundary
    check(probability(7, 13), 0.862169810); // Usual
    check(probability(16, 16), 0.99999886577); // Boundary
    check(probability(15, 20), 0.99938128102); // Usual
    check(probability(4, 20), 0.27325); // Usual
    check(probability(21, 21), 0.9999999912); // Boundary
    check(probability(1, 21), 0); // Boundary
    check(probability(4, 7), 0.650145772); // Usual
    check(probability(30, 30), 0.99999999999871168); // Boundary
    check(probability(1, 27), 0); // Boundary
    check(probability(2, 27), 0.037037037037037037); // Usual
    check(probability(7, 30), 0.530844444444444444); // Usual

    if(failed == 0){
        std::cout << "All tests passed" << std::endl;
    }

    return 0;
}