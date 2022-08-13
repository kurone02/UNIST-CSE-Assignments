#include "bank-account.h"

bank_account& bank_account::operator +=(unsigned long amt){
    this->balance += amt;
    return *this;

}
bool bank_account::transfer_to(bank_account &other, unsigned long const amt){
    if(this->balance < amt){
        return false;
    }
    this->balance -= amt;
    other.balance += amt;
    return true;
}

std::ostream& operator <<(std::ostream &out, bank_account const &acc){
    return out << acc.get_balance();
}

