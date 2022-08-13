#include <iostream>
#include <climits>
#include <cstddef>

double mean(double *arr, size_t n){
    double total = 0;
    for(size_t i = 0; i < n; i++){
        total += arr[i];
    }
    return total / n;
}

int main(){

    double *temperature = new double[20];
    size_t n = 0;
    size_t number_of_lines = 0;
    
    while(true){
        double temp;
        std::cin >> temp;
        if(std::cin.eof()) break;
        if(std::cin){ // Good input
            temperature[n] = temp;
            n++;
        } else{ // Bad input
            std::cin.clear();
            std::cin.ignore(SSIZE_MAX, '\n');
        }
        number_of_lines++;
    }

    std::cout << number_of_lines << " lines read in" << std::endl;
    std::cout << n << " valid lines read in" << std::endl;

    double mean_temp = mean(temperature, n);
    std::cout.precision(1);
    std::cout << "mean temperature is " << std::fixed << mean_temp << std::endl;

    std::cout << "temperatures colder than the mean:" << std::endl;
    std::cout.precision(3);
    std::cout << std::fixed;
    for(size_t i = 0; i < n; i++){
        if(temperature[i] < mean_temp){
            std::cout.width(10);
            std::cout << std::right;
            std::cout << temperature[i] << std::endl;
        }
    }

    return 0;
}