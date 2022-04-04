#ifndef TO_POSTFIX_H
#define TO_POSTFIX_H

#include <iostream>
#include <sstream>
#include "stack.h"

using namespace std;

const char list_of_operators[] = {'+', '-', '*', '/'};

// Check if the token is a operator.
bool is_operator(const char &token){
    for(int i = 0; i < 4; i++){
        if(token == list_of_operators[i]) return true;
    }
    return false;
}

// Check if the token is a digit.
bool is_num(const char &token){
    return '0' <= token && token <= '9';
}

// Remove white spaces.
string remove_space(const string &s){
    stringstream ss; ss << s;
    string res = "";
    for(string x; ss >> x;){
        int n = x.size();
        for(int i = 0; i < n; i++) res.push_back(x[i]);
    }
    return res;
}

// Convert unary minus into '~' and ~(...) into ~1*(...)
string refine(string s){
    s = remove_space(s); s = "(" + s + ")";
    int n = s.size();
    string res = "";
    for(int i = 0; i < n; i++){
        char current_char = s[i];
        bool paren = false;
        if(current_char == '-'){
            char prev_char = s[i - 1];
            char next_char = s[i + 1];
            if(is_operator(prev_char) || prev_char == '('){
                current_char = '~';
                paren = (next_char == '(');
            }
        }
        if(i != 0 && i != n - 1){
            res.push_back(current_char);
            if(paren){
                res.push_back('1'); res.push_back('*');
            }
        }
    }
    return res;
}

int isp(const char &op){
    switch(op){
        case '(': 
            return 8;
        case '*': case '/':
            return 1;
        case '+': case '-':
            return 2;
        default:
            return 100;
    }
}

int icp(const char &op){
    switch(op){
        case '(': 
            return 0;
        case '*': case '/':
            return 1;
        case '+': case '-':
            return 2;
        default:
            return 100;
    }
}

string to_postfix(const string& infix) {
    Stack<char> st;
    string refined_infix = refine(infix);    
    string res = "";
    int n = refined_infix.size();

    st.push('#');
    for(int i = 0; i < n; i++){
        char token = refined_infix[i];
        if(is_num(token) || token == '~' || token == '.'){
            if(!res.empty()) res.push_back(' ');
            while(is_num(token) || token == '~' || token == '.'){
                if(token == '~') res.push_back('-');
                else res.push_back(token);
                token = refined_infix[++i];
            } i--;
        } else if(token == ')'){
            for(; st.top() != '('; st.pop()){
                if(!res.empty()) res.push_back(' ');
                res.push_back(st.top());
            }
            st.pop();
        } else{
            for(; isp(st.top()) <= icp(token); st.pop()){
                if(!res.empty()) res.push_back(' ');
                res.push_back(st.top());
            }
            st.push(token);
        }
    }

    for(;!st.empty(); st.pop()) if(st.top() != '#'){
        if(!res.empty()) res.push_back(' '); res.push_back(st.top());
    }

    return res;
}

#endif //TO_POSTFIX_H
