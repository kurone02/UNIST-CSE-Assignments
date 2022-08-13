#ifndef RNA_H
#define RNA_H

#include<cstddef>
#include<climits>

enum class rna_base {
    A, U, C, G
};

size_t min_number(size_t, size_t);

bool wrong_right_input(char);

rna_base element(char);

char element_out(rna_base);

int score_without_realigning(rna_base const *, size_t, rna_base const *, size_t);

int best_alignment(rna_base const *, size_t, rna_base const *, size_t, long &);




#endif