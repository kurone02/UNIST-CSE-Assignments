#ifndef LIBRARY_H
#define LIBRARY_H

#include <vector>
#include <memory>

class library_item {
    bool is_checked_out;
public:
    library_item(): is_checked_out(false) {}
    virtual int borrowing_period() const { return 7; };
    virtual void loan() { this->is_checked_out = true; }
    virtual void give_back() { this->is_checked_out = false; }
    virtual bool can_borrow() { return !this->is_checked_out; }
    virtual bool is_late(int days_after) const {
        return days_after > this->borrowing_period();
    }
};

class book : public library_item {
public: 
    book(): library_item() {}
    virtual int borrowing_period() const { return 14; }
};

class journal : public library_item {
public:
    journal(): library_item() {}
};

class library {
    std::vector<std::shared_ptr<library_item> > catalogue;
public:
    library(): catalogue(std::shared_ptr<library_item>()) {}
    void add_library_item(std::shared_ptr<library_item>);
    int how_many_overdue(int days_after) const;
};

#endif
