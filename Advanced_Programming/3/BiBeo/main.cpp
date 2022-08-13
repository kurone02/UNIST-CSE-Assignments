#include "rna.h"
#include<iostream>

int main(){
    using namespace std;
    rna_base first_seq[1000];
    rna_base second_seq[1000];
    rna_base* cur_seq = first_seq;
    size_t num_first = 0, num_second = 0;
    size_t *cur_num = &num_first;
    int num_switches = 0;
    long align = 0;
    while (cin && !cin.eof()){
        char dummy;
        cin >> dummy;
        if (cin.eof()) break;

        if (cin && wrong_right_input(dummy)){
            cur_seq[*cur_num] = element(dummy);
            (*cur_num)++;    
        }
        else {
            num_switches++;
            if(num_switches == 2){
                break;
            }
            cur_seq = second_seq;
            cur_num = &num_second;
        }
    }
    if (num_switches != 2){
        cout << "Bad input" << endl;
        return 1;
    }
    
    cout << "Best score: " << best_alignment(first_seq, num_first, second_seq, num_second, align) << endl;
    cout << "Best alignment: " << align << endl;
    // align < 0: first to the right
    // align > 0: second to the right
    // align = 0: nothing
    if (align <= 0){
        for (long i = 0; i < (~align + 1); i++){
            cout << "  ";
        }
        for (size_t i = 0; i < num_first; i++){
            cout << element_out(first_seq[i]) << " ";
        }
        cout << endl;
        for (size_t i = 0; i < num_second; i++){
            cout << element_out(second_seq[i]) << " ";
        }
        cout << endl;
    }
    else {
        for (size_t i = 0; i < num_first; i++){
            cout << element_out(first_seq[i]) << " ";
        }
        cout << endl;
        for (long i = 0; i < align; i++){
            cout << "  ";
        }
        for (size_t i = 0; i < num_second; i++){
            cout << element_out(second_seq[i]) << " ";
        }
        cout << endl;
    }
    return 0;
}