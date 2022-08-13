#include <iostream>
#include "library.h"

void library::add_library_item(std::shared_ptr<library_item> new_item){
    this->catalogue.push_back(new_item);
}

int library::how_many_overdue(int days_after) const {
    int num_overdue = 0;
    for(const std::shared_ptr<library_item> li: this->catalogue){
        if(li->is_late(days_after)){
            num_overdue++;
        }
    }
    return num_overdue;
}

library*  make_small_library(){
    library *l = new library;
    std::shared_ptr<book> b = std::shared_ptr<book>(new book);
    std::shared_ptr<journal> j = std::shared_ptr<journal>(new journal);
    b->loan();
    j->loan();
    l->add_library_item(b);
    l->add_library_item(j);
    return l;
}

int main() {
    using namespace std;
    book b;
    journal j;
    cout << b.borrowing_period() << endl
         << j.borrowing_period() << endl;
    //library_item &l = b;
    //cout << l.borrowing_period() << endl;
    //library_item m = b;
    //cout << m.borrowing_period() << endl;

    library* l = make_small_library();
    cout << l->how_many_overdue(10) << endl;
    delete l;


    return 0; 
}
