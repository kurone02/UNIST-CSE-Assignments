/*
    Student name: Nguyen Minh Duc
    Student ID: 20202026

    This is main.cpp, where it read in all values from cin,
    performs all analysis and produce output.
*/


#include <iostream>
#include <iomanip>
#include "rna.h"

// Output the sequence
void print_sequence(rna_base const *seq, size_t size_seq){
    for(size_t i = 0; i < size_seq; i++){
        std::cout << seq[i] << ' ';
    }
    std::cout << std::endl;
}

// Padding the output with 2*k spaces if necessary.
void print_shift(int const &i, long const &k){
    if(k < 0 && i == 0) std::cout << std::setfill(' ') << std::setw(-2 * k) << ' ';
    if(k > 0 && i == 1) std::cout << std::setfill(' ') << std::setw(2 * k) << ' ';
}

// Invoke when bad input is detected
int bad_input(rna_base *seq[]){
    std::cout << "Bad input" << std::endl;
    for(size_t i = 0; i < 2; i++){
        delete[] seq[i];
    }
    return 1;
}

int main(){
    rna_base *seq[2];
    size_t size[2];
    int current_seq = 0;
    for(size_t i = 0; i < 2; i++){
        seq[i] = new rna_base[1000];
        size[i] = 0;
    }

    // Input
    while(true){
        rna_base nuc;
        std::cin >> nuc;
        if(std::cin.eof()) break;
        if(std::cin){ // Good input
            if(current_seq >= 2) break;
            if(nuc == rna_base::INVALID){
                current_seq++;
                continue;
            }
            if(size[current_seq] < 1000){
                seq[current_seq][size[current_seq]] = nuc;
                size[current_seq]++;
                continue;
            }
        }
        return bad_input(seq);
    }

    if(current_seq != 2){
        return bad_input(seq);
    }

    long shift_amt = 0;
    int best_score = best_alignment(seq[0], size[0], seq[1], size[1], shift_amt);

    std::cout << "Best score: " << best_score << std::endl;
    std::cout << "Best alignment: " << shift_amt << std::endl;
    for(int i = 0; i < 2; i++){
        print_shift(i, shift_amt);
        print_sequence(seq[i], size[i]);
    }

    for(size_t i = 0; i < 2; i++){
        delete[] seq[i];
    }
    return 0;
}