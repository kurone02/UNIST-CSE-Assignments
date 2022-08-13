/*
    Student name: Nguyen Minh Duc
    Student ID: 20202026

    This is main.cpp, where it read in all values from cin,
    performs all analysis and produce output.
*/


#include <iostream>
#include "array.h"
#include <cmath>
#include <climits>

int main(){

    double *temperature = new double[1000];
    size_t n = 0;

    // Input
    while(true){
        double temp;
        std::cin >> temp;
        if(std::cin.eof()) break;
        if(std::cin){ // Good input
            temperature[n] = temp;
            n++;
        } else{ // Bad input
            temperature[n] = NAN;
            n++;
            std::cin.clear();
            std::cin.ignore(SSIZE_MAX, '\n');
        }
    }

    // To print out real numbers up to 3 decimal places.
    std::cout.precision(3);
    std::cout << std::fixed;

    // 1. A list of “Daily highs”
    std::cout << "Daily highs\n";
    std::cout << "===========\n";
    for(size_t i = 0; i < n; i += 24){
        std::cout.width(12);
        std::cout << std::right;
        size_t start_id = i;
        size_t end_id = (i + 23 < n)? i + 23 : n - 1;
        std::cout << *maximum_value(temperature + i, end_id - start_id + 1);
        std::cout << std::endl;
    }

    std::cout << std::endl;

    // 2. Sliding window of 24-hour averages
    std::cout << "Sliding window 24-hour averages\n";
    std::cout << "===============================\n";
    for(size_t i = 0; i < n; i++){
        // First column
        std::cout.width(12);
        std::cout << std::right << temperature[i];
        // Second column
        std::cout.width(12);
        std::cout << std::right;
        size_t start_id = (i >= 12)? i - 12 : 0;
        size_t end_id = (i + 11 < n)? i + 11 : n - 1;
        std::cout << mean(temperature + start_id, end_id - start_id + 1);
        std::cout << std::endl;
    }

    std::cout << std::endl;

    // 3, The mean temperature of all readings, and after removing 1, 2 highest
    std::cout << "Overall mean: " << mean(temperature, n) << std::endl;
    *maximum_value(temperature, n) = NAN;
    std::cout << "Mean after removing the largest value: " << mean(temperature, n) << std::endl;
    *maximum_value(temperature, n) = NAN;
    std::cout << "Mean after removing the 2 largest values: " << mean(temperature, n) << std::endl;

    delete[] temperature;

    return 0;
}