#include "rna.h"


size_t min_number(size_t num_first, size_t num_second){
    size_t min = num_first;
    if (min > num_second){
        min = num_second;
    }
    return min;
}

bool wrong_right_input(char inp){
    switch (inp){
        case 'A':
        case 'U':
        case 'C':
        case 'G':
            return true;
        default: 
            return false;
    }
}

rna_base element(char inp){
    switch (inp){
        case 'A': 
            return rna_base::A;
        case 'U':
            return rna_base::U;
        case 'C':
            return rna_base::C;
        case 'G':
            return rna_base::G;
    }
}

char element_out(rna_base outp){
    switch (outp){
        case rna_base::A: 
            return 'A';
        case rna_base::U:
            return 'U';
        case rna_base::C:
            return 'C';
        case rna_base::G:
            return 'G';
    }
}

int score_without_realigning(rna_base const * first, size_t num_first, rna_base const * second, size_t num_second) {
    int raw_sum = 0;
    for (size_t i = 0; i < min_number(num_first, num_second); i++){
        if ((*(first + i) == rna_base::A && *(second + i) == rna_base::U) || (*(first + i) == rna_base::U && *(second + i) == rna_base::A))
            raw_sum += 1;
        else if ((*(first + i) == rna_base::G && *(second + i) == rna_base::C) || (*(first + i) == rna_base::C && *(second + i) == rna_base::G))
            raw_sum += 1;
        else 
            raw_sum -= 1;
    }
    return raw_sum;
}

int best_alignment(rna_base const * first, size_t num_first, rna_base const * second, size_t num_second, long & align){
    // align < 0: first to the right
    // align > 0: second to the right
    // align = 0: nothing
    int max_sum = INT_MIN; 

    // shift the first sequence to the right
    for (size_t i = 0; i < num_second; i++){
        if (score_without_realigning(first, num_first, second + i, num_second - i) > max_sum){
            max_sum = score_without_realigning(first, num_first, second + i, num_second - i);
            align = ~i + 1;
        }
    }
    // shift the second sequence to the right
    for (size_t i = 0; i < num_first; i++){
        if (score_without_realigning(first + i, num_first - i, second, num_second) > max_sum){
            max_sum = score_without_realigning(first + i, num_first - i, second, num_second);
            align = i;
        }
    }
    
    return max_sum;

}
