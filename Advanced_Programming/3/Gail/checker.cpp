#include <iostream>
#include <fstream>
#include <string>
#include "rna.h"

using namespace std;

int bad_input(rna_base *seq[]){
    std::cout << "Bad input" << std::endl;
    for(size_t i = 0; i < 2; i++){
        delete[] seq[i];
    }
    return 1;
}

int main(int argc, char *argv[]){
    if(argc < 3){
        cout << "Invalid argument" << endl;
        return 1;
    }

    rna_base *seq[2];
    size_t size[2];
    int current_seq = 0;
    for(size_t i = 0; i < 2; i++){
        seq[i] = new rna_base[1000];
        size[i] = 0;
    }
//./main testdata/sample-input-00.txt 
    ifstream input(argv[1]);
    while(true){
        rna_base nuc;
        input >> nuc;
        if(input.eof()) break;
        if(input){ // Good input
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

    ifstream output(argv[2]);
    string temp; output >> temp; output >> temp;
    int best_score; output >> best_score;
    output >> temp; output >> temp;
    int best_align; output >> best_align;
    long shift_amt = 0;

    int my_best_score = best_alignment(seq[0], size[0], seq[1], size[1], shift_amt);

    if(best_score != my_best_score){
        cout << "Wrong best score!" << endl;
        for(size_t i = 0; i < 2; i++){
            delete[] seq[i];
        }
        return -1;
    }

    if(best_align < 0){
        best_align = -best_align;
        int score_with_align = score_without_realigning(seq[0], size[0], seq[1] + best_align, size[1] - best_align);
        if(my_best_score != score_with_align){
            cout << "Wrong alignment!" << endl;
            for(size_t i = 0; i < 2; i++){
                delete[] seq[i];
            }
            return -1;
        }
    } else{
        int score_with_align = score_without_realigning(seq[0] + best_align, size[0] - best_align, seq[1], size[1]);
        if(my_best_score != score_with_align){
            cout << "Wrong alignment!" << endl;
            for(size_t i = 0; i < 2; i++){
                delete[] seq[i];
            }
            return -1;
        }
    }

    cout << "Correct!" << endl;

    for(size_t i = 0; i < 2; i++){
        delete[] seq[i];
    }


    return 0;
}