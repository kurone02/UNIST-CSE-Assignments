#include <iostream>
#include "set.h"

int main(){
    using namespace std;
    integer_set s;
    s += 1;
    cout << "0 is in the set s? " << s[0] << endl;
    cout << "1 is in the set s? " << s[1] << endl;

    integer_set t = s;
    s += 3;
    cout << "3 is in the set t? " << t[3] << endl;
    cout << "3 is in the set s? " << s[1] << endl;

    s = t;
    s += 2;
    cout << "2 is in the set t? " << s[3] << endl;


    return 0;
}
