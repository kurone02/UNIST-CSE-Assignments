/* 
g++ -o test test.cpp Tree.h AVLTree.h RBTree.h -Wall -std=c++11 -O3
*/
#include <bits/stdc++.h>
#include "AVLTree.h"
#include "RBTree.h"
using namespace std;

ofstream input, answer, avl_output, rb_output;

mt19937 rng(12345);
uniform_int_distribution<int> gen(-100, 100);

void open_file(){
    input.open("input.txt");
    answer.open("tree_answer.txt");
    avl_output.open("avl_output.txt");
    rb_output.open("rb_output.txt");
}

void close_file(){
    answer.close();
    avl_output.close();
    rb_output.close();
}

int rand(){
    return gen(rng);
}

int main(){

    int n_test = 100;
    for(int test_id = 0; test_id < n_test; test_id++){
        open_file();
        map<int, int> jury;
        AVLTree_t<int, int> avl;
        RBTree_t<int, int> rb;
        cout << "TEST " << test_id << ": Generating..\n";
        int n_operation = 100;
        for(int i = 0; i < n_operation; i++){
            int key = rand();
            if(rand() % 4 == 0){
                cout << ".remove(" << key << ");\n";
                jury.erase(key);
                avl.remove(key);
                rb.remove(key);
            } else{
                int val = rand();
                cout << ".insert(" << key << ", " << val << ");\n";
                if(jury.find(key) != jury.end()) jury[key] = val;
                else jury.insert({key, val});
                avl.insert(key, val);
                rb.insert(key, val);
            }
        }
        input.close();
        cout << "Generation completed! Push to file output..\n";
        stringstream ss;
        for(auto it: jury) ss << it.first << ' ' << it.second << '\n';
        answer << ss.str();
        avl_output << avl.to_string_in_order();
        rb_output << rb.to_string_in_order();
        cout << "Output successfully! Checking the correctness..\n";
        bool wa = false;
        if (system("diff -Naur tree_answer.txt avl_output.txt") != 0){
            cout << "AVL is WRONG!\n";
            wa = true;
        }
        if (system("diff -Naur tree_answer.txt rb_output.txt") != 0){
            cout << "RB is WRONG!\n";
            wa = true;
        }
        if(wa) break;
        cout << "CORRECT!\n";
        cout << "--------------------------------------------------\n";
        close_file();
    }

    
    return 0;
}