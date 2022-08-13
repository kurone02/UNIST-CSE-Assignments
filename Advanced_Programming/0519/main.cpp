#include <iostream>
#include "bank-account.h"
#include "fraction.h"

int main(){
    using namespace std;
    cout << "--------START OF BANK-ACCOUNT--------" << endl;
    bank_account a;
    bank_account b = 50;
    a += 100;
    b += 1000;
    if(!a.transfer_to(b, 1020)){
        cerr << "Failed transfer money" << endl;
    }
    cout << a << endl << b << endl;
    cout << "---------END OF BANK-ACCOUNT---------" << endl;

    cout << endl;

    cout << "---------START OF FRACTION-----------" << endl;
    fraction f = -2;
    fraction m(5, 7);
    cout << f << endl << m << endl;
    cout << f * m + 1<< endl;
    cout << f * m - 1<< endl;
    f *= m;
    cout << f << endl;
    cout << "---------END OF FRACTION-------------" << endl;
    return 0;
}
