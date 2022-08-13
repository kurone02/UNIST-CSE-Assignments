/*
    Student name: Nguyen Minh Duc
    Student ID: 20202026

    This is array.cpp, where it implements the mean and maximum value functions.
*/


#include "array.h"
#include <iostream>
#include <cmath>

// Calculate the mean of all numbers ignoring Not-A-Numbers.
double mean(double const* arr, size_t n){
    double total_temp = 0;
    size_t total_not_NAN = 0;
    for(size_t i = 0; i < n; i++){
        if(std::isnan(arr[i])) continue;
        total_temp += arr[i];
        total_not_NAN++;
    }
    return total_temp / total_not_NAN;
}

// Return a pointer to the largest value in the array
double* maximum_value(double* arr, size_t n){
    double *maximum = NULL;
    double *ptr = NULL;
    for(ptr = arr; ptr != arr + n; ptr++){
        if(std::isnan(*ptr)) continue;
        if(maximum == NULL){
            maximum = ptr;
        } else if(*maximum < *ptr){
            maximum = ptr;
        }
    }
    if(maximum == NULL) return arr;
    return maximum;
}