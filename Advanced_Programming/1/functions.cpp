/*
    Student name: Nguyen Minh Duc
    Student ID: 20202026

    This is functions.cpp where it contains a factorial function and a probability function.
*/

#include <cmath>
#include "functions.h"

double factorial(int n){
    double res = 1;
    for(int i = 1; i <= n; i++) res *= i;
    return res;
}

double probability(int n, int k){
    return 1 - factorial(k) / (std::pow(k, n) * factorial(k - n));
}