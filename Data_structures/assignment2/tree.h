#ifndef TREE_H
#define TREE_H

#include <iostream>
#include <sstream>
#include <cstdlib>
#include "stack.h"
#include "queue.h"

using namespace std;

const string operators_list[] = {"+", "-", "*", "/"};

/*
 * Recursive binary tree structure for building expression tree
 *
 * Constructors: Tree(char, Tree*, Tree*) and Tree(string, Tree*, Tree*)
 *      pointers will be automatically set to NULL if omitted
 *
 * Destructor: recursively destruct whole tree
 *
 */

struct Tree {
    string expr;
    Tree* left;
    Tree* right;

    explicit Tree(char h, Tree* l = NULL, Tree* r = NULL) {
        expr = string(1, h);
        left = l;
        right = r;
    }

    explicit Tree(const string& h = string(), Tree* l = NULL, Tree* r = NULL) {
        expr = h;
        left = l;
        right = r;
    }

    ~Tree() {
        delete left;
        delete right;
    }

    int size() {
        int size = 1;
        if (left != NULL) { size += left->size(); }
        if (right != NULL) { size += right->size(); }
        return size;
    }

    void print();

    double eval();
};

// -------- implement below --------

void Tree::print() {
    Stack<string> st;
    Queue<Tree*> q;
    q.push(this);
    while(!q.empty()){
        Tree* u = q.front();
        q.pop();
        if(u){
            q.push(u->left); q.push(u->right);
            st.push(u->expr);
        } else st.push("null");
    }
    while(!st.empty() && st.top() == "null") st.pop();
    cout << '(';
    Stack<string> res;
    while(!st.empty()){
        res.push(st.top()); st.pop();
    }
    while(!res.empty()){
        cout << res.top();
        res.pop();
        if(!res.empty()) cout << ',';
    }
    cout << ')' << '\n';
}

bool is_operator(const string &token){
    for(int i = 0; i < 4; i++){
        if(token == operators_list[i]) return true;
    }
    return false;
}

double Tree::eval() {
    if(this == NULL) return 0;
    if(is_operator(expr)){
        double LHS = left->eval();
        double RHS = right->eval();
        if(expr == "+"){
            return LHS + RHS;
        } else if(expr == "-"){
            return LHS - RHS;
        } else if(expr == "*"){
            return LHS * RHS;
        } else{
            return LHS / RHS;
        }
    } else{
        stringstream ss; ss << expr;
        double x; ss >> x;
        return x;
    }
}

Tree* build_expression_tree(const string& postfix) {
    Stack<Tree*> st;
    stringstream ss; ss << postfix;
    for(string token; ss >> token;){
        if(is_operator(token)){
            Tree* RHS = st.top(); st.pop();
            Tree* LHS = st.top(); st.pop();
            st.push(new Tree(token, LHS, RHS));
        } else{
            st.push(new Tree(token));
        }
    }
    return st.top();
}

#endif //TREE_H
