/*
    Student name: Nguyen Minh Duc
    Student ID: 20202026

    This is main.cpp where it contains a main method which reads in k 
    and prints out the probability table
*/

#include <iostream>
#include "functions.h"


int main(){

    int k; std::cin >> k;
    if(std::cin){ 
        if(k < 0) return 0;
    } else return 0;

    for(int n = 1; n <= k; n++){
        std::cout.width(3);
        std::cout << n;
        std::cout.width(12);
        std::cout.precision(7);
        std::cout << std::right << std::fixed << 100 * probability(n, k);
        std::cout << std::endl;
    }
    

    return 0;
}