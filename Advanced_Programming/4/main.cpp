/*
    Student name: Nguyen Minh Duc
    Student ID: 20202026

    This is random-gen.cpp, where it contains the main() function 
    and does not contain any classes
*/

#include <iostream>
#include "random-gen.h"

std::vector<rng_ptr> rng_list;

void add_a_die(){
    std::cout << "How many sides? ";
    int x; std::cin >> x;
    rng_list.push_back(rng_ptr(new die(x)));
}

void add_a_biased_die(){
    std::cout << "How many sides? ";
    int x; std::cin >> x;
    std::cout << "Which side should be chosen less often (0-n)? ";
    int y; std::cin >> y;
    rng_list.push_back(rng_ptr(new biased_die(x, y)));
}

void add_a_predetermined_int(){
    rng_list.push_back(rng_ptr(new predetermined<int>({0, 2, 4, 1, 3, 5})));
}

void add_a_predetermined_frac(){
    rng_list.push_back(rng_ptr(new predetermined<double>({
        1, (double)1 / 2, (double)1 / 3, (double)1 / 4,
        (double)1 / 5, (double)1 / 6, (double)1 / 7, (double)1 / 8
    })));
}

void add_a_mix(){
    if(rng_list.size() < 2) return;
    size_t n = rng_list.size();
    mix *rng = new mix(rng_list[n - 1], rng_list[n - 2]);
    rng_list.push_back(rng_ptr(rng));
}

void random_number_generator(){
    std::cout << "Between what and what? ";
    double l, r; std::cin >> l >> r;
    for(rng_ptr rng: rng_list){
        std::cout << rng->between(l, r) << ' ';
    }
    std::cout << std::endl;
}

int main(int argc, char **argv){
    if(argc == 2){
        srand(strtoul(argv[1], nullptr, 0));
    } else{
        srand(time(nullptr));
    }

    int user_input;
    do{
        std::cout << "(0) Quit" << std::endl;
        std::cout << "(1) Add a die" << std::endl;
        std::cout << "(2) Add a die that cheats" << std::endl;
        std::cout << "(3) Add a die that cycles 0, 2, 4, 1, 3, 5, ..." << std::endl;
        std::cout << "(4) Add a sequence of fractions 1, 1/2, 1/3, 1/4, 1/5, 1/6, 1/7, 1/8, 1, 1/2, ..." << std::endl;
        if(rng_list.size() >= 2){
            std::cout << "(5) Add a mixture of the last two generators added" << std::endl;
        }
        std::cout << "(6) Generate random numbers" << std::endl;
        std::cout << "Enter your choice: ";
        std::cin >> user_input;
        switch(user_input){
            case 1:
                add_a_die();
                break;
            case 2:
                add_a_biased_die();
                break;
            case 3:
                add_a_predetermined_int();
                break;
            case 4:
                add_a_predetermined_frac();
                break;
            case 5:
                add_a_mix();
                break;
            case 6:
                random_number_generator();
                break;
            default:
                break;
        }
    } while(user_input != 0);
    
    return 0;
}