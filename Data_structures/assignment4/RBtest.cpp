#include <iostream>

#include "RBTree.h"

int main() {
    // RBTree_t<int, int> t;

    // // basic insertions
    // t.insert(3, 5);
    // std::cout << t.to_string_pre_order() << '\n';
    // std::cout << t.to_string_level_order() << '\n';
    // t.insert(-2, 7);
    // std::cout << t.to_string_pre_order() << '\n';
    // std::cout << t.to_string_level_order() << '\n';
    // t.insert(10, 4);
    // std::cout << t.to_string_pre_order() << '\n';
    // std::cout << t.to_string_level_order() << '\n';
    // t.insert(7, 8);
    // std::cout << t.to_string_pre_order() << '\n';
    // std::cout << t.to_string_level_order() << '\n';

    // // basic search
    // t.search(7);
    // t.search(-2);

    // // basic removal
    // t.remove(3);
    // std::cout << t.to_string_pre_order() << '\n';
    // std::cout << t.to_string_level_order() << '\n';

    // // update on existing keys
    // t.insert(-2, 8);
    // std::cout << t.to_string_pre_order() << '\n';
    // std::cout << t.to_string_level_order() << '\n';
    // t.insert(10, 11);
    // std::cout << t.to_string_pre_order() << '\n';
    // std::cout << t.to_string_level_order() << '\n';

    // // insertion of "special" keys and values
    // t.insert(-1, 3);
    // std::cout << t.to_string_pre_order() << '\n';
    // std::cout << t.to_string_level_order() << '\n';
    // t.insert(4, -1);
    // std::cout << t.to_string_pre_order() << '\n';
    // std::cout << t.to_string_level_order() << '\n';
    // t.insert(0, 1);
    // std::cout << t.to_string_pre_order() << '\n';
    // std::cout << t.to_string_level_order() << '\n';
    // t.insert(1, 0);
    // std::cout << t.to_string_pre_order() << '\n';
    // std::cout << t.to_string_level_order() << '\n';

    // // searching those
    // t.search(-1);
    // t.search(0);

    // // and removals
    // t.remove(-1);
    // std::cout << t.to_string_pre_order() << '\n';
    // std::cout << t.to_string_level_order() << '\n';
    // t.remove(0);
    // std::cout << t.to_string_pre_order() << '\n';
    // std::cout << t.to_string_level_order() << '\n';

    // // try to search for nonexisting keys
    // t.search(1000);
    // t.search(-42);

    // // and removals
    // t.remove(100);
    // std::cout << t.to_string_pre_order() << '\n';
    // t.remove(-1);
    // std::cout << t.to_string_pre_order() << '\n';


    // These tests are by no means exhaustive
    // Try to think of your own edge cases!
    // (Something more closely related to tree structure itself would be a good start)

    RBTree_t<int, int> my_test;


    my_test.insert(60, 9);
    std::cout << my_test.to_string_pre_order() << '\n';
    std::cout << my_test.to_string_level_order() << '\n';
    my_test.insert(55, 52);
    std::cout << my_test.to_string_pre_order() << '\n';
    std::cout << my_test.to_string_level_order() << '\n';
    my_test.insert(57, 63);
    std::cout << my_test.to_string_pre_order() << '\n';
    std::cout << my_test.to_string_level_order() << '\n';
    my_test.insert(-13, 43);
    std::cout << my_test.to_string_pre_order() << '\n';
    std::cout << my_test.to_string_level_order() << '\n';
    my_test.insert(89, 71);
    std::cout << my_test.to_string_pre_order() << '\n';
    std::cout << my_test.to_string_level_order() << '\n';
    my_test.insert(-63, 11);
    std::cout << my_test.to_string_pre_order() << '\n';
    std::cout << my_test.to_string_level_order() << '\n';
    my_test.insert(-7, -3);
    std::cout << my_test.to_string_pre_order() << '\n';
    std::cout << my_test.to_string_level_order() << '\n';
    my_test.insert(77, 30);
    std::cout << my_test.to_string_pre_order() << '\n';
    std::cout << my_test.to_string_level_order() << '\n';
    my_test.remove(89);

    std::cout << "END\n";


    // my_test.insert(-1, -8);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.insert(7, 7);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.insert(8, -5);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.insert(-4, -1);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.insert(3, -3);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.remove(-5);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.remove(-2);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.insert(-6, -6);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.remove(8);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';

    // my_test.insert(3, -2);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.insert(-7, 10);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.insert(3, 7);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.remove(3);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';

    // my_test.insert(-1, -8);
    // std::cout << 1 << '\n';
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.remove(-3);
    // std::cout << 2 << '\n';
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.insert(7, 8);
    // std::cout << 3 << '\n';
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.insert(5, -8);
    // std::cout << 4 << '\n';
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.insert(-6, -4);
    // std::cout << 5 << '\n';
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.insert(-4, -2);
    // std::cout << 6 << '\n';
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.insert(-9, -7);
    // std::cout << 7 << '\n';
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.remove(6);
    // std::cout << 8 << '\n';
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.remove(-1);
    // std::cout << 9 << '\n';
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';

    return 0;
}
