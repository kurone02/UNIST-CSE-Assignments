#ifndef BANK_ACCOUNT_H
#define BACK_ACCOUNT_H

class bank_account{
    unsigned long balance;
public:
    bank_account(unsigned long b=0): balance(b){};

    bank_account& operator +=(unsigned long);
    unsigned long get_balance() const { return this->balance; }
    /*
    * Returns 'true' if the action was executed successfully
    * Returns 'false' if the action was executed unscessfully
    */
    bool transfer_to(bank_account&, unsigned long const);
};

#include <iostream>
std::ostream& operator <<(std::ostream &, bank_account const &);

#endif
