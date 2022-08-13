/*
    Student name: Nguyen Minh Duc
    Student ID: 20202026

    This is rna.h, where it contains all the required prototypes
*/

#include <cstddef>
#include <iomanip>
#include <climits>

// An enum class that reprents the nucleotides on a RNA sequence
enum class rna_base{
    A, C, U, G, INVALID
};

// Find the minimum between two arguments
size_t min(size_t const &, size_t const &);

// Convert character to rna_base enum class
rna_base char_to_enum(char const &);

// Convert rna_base enum class to character
char enum_to_char(rna_base const &nuc);

// Overload the << operator to input the rna_base enum class
std::istream& operator >>(std::istream& inp, rna_base &c);

// Overload the << operator to print out the rna_base enum class
std::ostream& operator <<(std::ostream& out, rna_base const &nuc);

// Calculate the matching score between two nucleotides
int score(rna_base const &, rna_base const &);

// Compute the score of two sequence
int score_without_realigning(rna_base const *, size_t, rna_base const *, size_t);

// Find and return the best alignment that results in the best score
int best_alignment(rna_base const *, size_t, rna_base const *, size_t, long &);