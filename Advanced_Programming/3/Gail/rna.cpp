/*
    Student name: Nguyen Minh Duc
    Student ID: 20202026

    This is rna.cpp, where it contains all the required functions
*/

#include "rna.h"
#include <iostream>

size_t min(size_t const &x, size_t const &y){
    return (x < y)? x : y;
}

int score(rna_base const &nuc1, rna_base const &nuc2){
    if(nuc1 == rna_base::A && nuc2 == rna_base::U) return 1;
    if(nuc1 == rna_base::U && nuc2 == rna_base::A) return 1;
    if(nuc1 == rna_base::C && nuc2 == rna_base::G) return 1;
    if(nuc1 == rna_base::G && nuc2 == rna_base::C) return 1;
    return -1;
}

rna_base char_to_enum(char const &c){
    switch(c){
        case 'A': return rna_base::A;
        case 'U': return rna_base::U;
        case 'G': return rna_base::G;
        case 'C': return rna_base::C;
        default: return rna_base::INVALID;
    }
}

char enum_to_char(rna_base const &nuc){
    switch(nuc){
        case rna_base::A: return 'A';
        case rna_base::U: return 'U';
        case rna_base::G: return 'G';
        case rna_base::C: return 'C';
        default: return ' ';
    }
}

std::istream& operator >>(std::istream& inp, rna_base &nuc){
    char c; inp >> c;
    nuc = char_to_enum(c);
    return inp;
}

std::ostream& operator <<(std::ostream& out, rna_base const &nuc){
    return out << enum_to_char(nuc);
}

int score_without_realigning(rna_base const *a1, size_t a1_size, rna_base const *a2, size_t a2_size){
    size_t n = min(a1_size, a2_size);
    int total_score = 0;
    for(size_t i = 0; i < n; i++){
        total_score += score(a1[i], a2[i]);
    }
    return total_score;
}

int best_alignment(rna_base const *a1, size_t a1_size, rna_base const *a2, size_t a2_size, long &k){
    int optimal_score = INT_MIN;
    for(size_t i = 0; i <= a2_size; i++){
        int current_score = score_without_realigning(a1, a1_size, a2 + i, a2_size - i);
        if(optimal_score < current_score){
            optimal_score = current_score;
            k = -(long)i;
        }
    }
    for(size_t i = 0; i <= a1_size; i++){
        int current_score = score_without_realigning(a1 + i, a1_size - i, a2, a2_size);
        if(optimal_score < current_score){
            optimal_score = current_score;
            k = i;
        }
    }
    return optimal_score;
}