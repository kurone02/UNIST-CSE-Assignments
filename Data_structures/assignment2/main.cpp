#include <iostream>
#include <iomanip>
#include <fstream>
#include "stack.h"
#include "queue.h"
#include "tree.h"
#include "to_postfix.h"

int main() {
    /*
    // part 1: stack & queue
    Stack<int> s;
    for (int i = 0; i < 8; ++i) {
        s.push(i);
    }
    cout << s.size() << '\n';
    while (!s.empty()) {
        cout << s.top() << " "; // 7 6 5 4 3 2 1 0
        s.pop();
    }
    cout << endl;

    Queue<int> q;
    for (int i = 0; i < 8; ++i) {
        q.push(i);
    }
    cout << q.size() << '\n';
    while (!q.empty()) {
        cout << q.front() << " "; // 0 1 2 3 4 5 6 7
        q.pop();
    }
    cout << endl;
    */

    // part 2: convert infix to postfix
    freopen("test.inp", "r", stdin);
    freopen("test.out", "w", stdout);
    string infix;
    
    getline(cin, infix);

    string postfix = to_postfix(infix);
    cout << postfix << endl; // -1 2 -3 4 * + * -2 /

    // part 3: evaluate an expression tree
    Tree* postfix_tree = build_expression_tree(postfix);
    //postfix_tree->print(); 
    cout << fixed << setprecision(4) << postfix_tree->eval() << endl; // -5


    delete postfix_tree;

    return 0;
}
