#include <iostream>

#include "AVLTree.h"

int main() {
    AVLTree_t<int, int> t;

    // basic insertions
    t.insert(3, 5);
    std::cout << t.to_string_pre_order() << '\n';
    std::cout << t.to_string_level_order() << '\n';
    t.insert(-2, 7);
    std::cout << t.to_string_pre_order() << '\n';
    std::cout << t.to_string_level_order() << '\n';
    t.insert(10, 4);
    std::cout << t.to_string_pre_order() << '\n';
    std::cout << t.to_string_level_order() << '\n';
    t.insert(7, 8);
    std::cout << t.to_string_pre_order() << '\n';
    std::cout << t.to_string_level_order() << '\n';

    // basic search
    t.search(7);
    t.search(-2);

    // basic removal
    t.remove(3);
    std::cout << t.to_string_pre_order() << '\n';
    std::cout << t.to_string_level_order() << '\n';

    // update on existing keys
    t.insert(-2, 8);
    std::cout << t.to_string_pre_order() << '\n';
    std::cout << t.to_string_level_order() << '\n';
    t.insert(10, 11);
    std::cout << t.to_string_pre_order() << '\n';
    std::cout << t.to_string_level_order() << '\n';

    // insertion of "special" keys and values
    t.insert(-1, 3);
    std::cout << t.to_string_pre_order() << '\n';
    std::cout << t.to_string_level_order() << '\n';
    t.insert(4, -1);
    std::cout << t.to_string_pre_order() << '\n';
    std::cout << t.to_string_level_order() << '\n';
    t.insert(0, 1);
    std::cout << t.to_string_pre_order() << '\n';
    std::cout << t.to_string_level_order() << '\n';
    t.insert(1, 0);
    std::cout << t.to_string_pre_order() << '\n';
    std::cout << t.to_string_level_order() << '\n';

    // searching those
    t.search(-1);
    t.search(0);

    // and removals
    t.remove(-1);
    std::cout << t.to_string_pre_order() << '\n';
    std::cout << t.to_string_level_order() << '\n';
    t.remove(0);
    std::cout << t.to_string_pre_order() << '\n';
    std::cout << t.to_string_level_order() << '\n';

    // try to search for nonexisting keys
    t.search(1000);
    t.search(-42);

    // and removals
    t.remove(100);
    std::cout << t.to_string_pre_order() << '\n';
    std::cout << t.to_string_level_order() << '\n';
    t.remove(-1);
    std::cout << t.to_string_pre_order() << '\n';
    std::cout << t.to_string_level_order() << '\n';


    // These tests are by no means exhaustive
    // Try to think of your own edge cases!
    // (Something more closely related to tree structure itself would be a good start)

    // AVLTree_t<int, int> my_test;
    
    // my_test.insert(3, -2);
    // my_test.insert(-7, 10);
    // my_test.insert(3, 7);
    // my_test.remove(3);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.insert(9, -10);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.insert(0, 0);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';
    // my_test.insert(-9, 0);
    // my_test.insert(-3, 6);
    // my_test.remove(9);
    // std::cout << my_test.to_string_pre_order() << '\n';
    // std::cout << my_test.to_string_level_order() << '\n';

    // Stackoverflow #1

    // INSERT
    // Case a1
    // AVLTree_t<int, int> a1;
    // a1.insert(20, 20);
    // a1.insert(4, 4);
    // a1.insert(15, 15);

    // std::cout << a1.to_string_pre_order() << '\n';
    // std::cout << a1.to_string_level_order() << '\n';

    // // Case a2
    // AVLTree_t<int, int> a2;
    // a2.insert(20, 20);
    // a2.insert(4, 4);
    // a2.insert(26, 26);
    // a2.insert(3, 3);
    // a2.insert(9, 9);
    // a2.insert(15, 15);

    // std::cout << a2.to_string_pre_order() << '\n';
    // std::cout << a2.to_string_level_order() << '\n';

    // // Case a3
    // AVLTree_t<int, int> a3;

    // a3.insert(20, 20);
    // a3.insert(4, 4);
    // a3.insert(26, 26);
    // a3.insert(3, 3);
    // a3.insert(9, 9);
    // a3.insert(21, 21);
    // a3.insert(30, 30);
    // a3.insert(2, 2);
    // a3.insert(7, 7);
    // a3.insert(11, 11);

    // a3.insert(15, 15);

    // std::cout << a3.to_string_pre_order() << '\n';
    // std::cout << a3.to_string_level_order() << '\n';

    // // Case b1
    // AVLTree_t<int, int> b1;
    // b1.insert(20, 20);
    // b1.insert(4, 4);
    // b1.insert(8, 8);

    // std::cout << b1.to_string_pre_order() << '\n';
    // std::cout << b1.to_string_level_order() << '\n';

    // // Case b2
    // AVLTree_t<int, int> b2;
    // b2.insert(20, 20);
    // b2.insert(4, 4);
    // b2.insert(26, 26);
    // b2.insert(3, 3);
    // b2.insert(9, 9);

    // b2.insert(8, 8);

    // std::cout << b2.to_string_pre_order() << '\n';
    // std::cout << b2.to_string_level_order() << '\n';

    // // Case b3
    // AVLTree_t<int, int> b3;

    // b3.insert(20, 20);
    // b3.insert(4, 4);
    // b3.insert(26, 26);
    // b3.insert(3, 3);
    // b3.insert(9, 9);
    // b3.insert(21, 21);
    // b3.insert(30, 30);
    // b3.insert(2, 2);
    // b3.insert(7, 7);
    // b3.insert(11, 11);

    // b3.insert(8, 8);

    // std::cout << b3.to_string_pre_order() << '\n';
    // std::cout << b3.to_string_level_order() << '\n';

    // DELETE
    // Case 1 SUCCESS
    // AVLTree_t<int, int> Case1;
    // Case1.insert(2, 2);
    // Case1.insert(1, 1);
    // Case1.insert(4, 4);
    // Case1.insert(3, 3);
    // Case1.insert(5, 5);
    // Case1.remove(1);

    // std::cout << Case1.to_string_pre_order() << '\n';
    // std::cout << Case1.to_string_level_order() << '\n';

    // // Case 2 SUCCESS
    // AVLTree_t<int, int> Case2;
    // Case2.insert(6, 6);
    // Case2.insert(2, 2);
    // Case2.insert(9, 9);
    // Case2.insert(1, 1);
    // Case2.insert(4, 4);
    // Case2.insert(8, 8);
    // Case2.insert(11, 11);
    // Case2.insert(3, 3);
    // Case2.insert(5, 5);
    // Case2.insert(7, 7);
    // Case2.insert(10, 10);
    // Case2.insert(12, 12);
    // Case2.insert(13, 13);
    // Case2.remove(1);

    // std::cout << Case2.to_string_pre_order() << '\n';
    // std::cout << Case2.to_string_level_order() << '\n';

    // // Case 3 SUCCESS
    // AVLTree_t<int, int> Case3;
    // Case3.insert(5, 5);
    // Case3.insert(2, 2);
    // Case3.insert(8, 8);
    // Case3.insert(1, 1);
    // Case3.insert(3, 3);
    // Case3.insert(7, 7);
    // Case3.insert(10, 10);
    // Case3.insert(4, 4);
    // Case3.insert(6, 6);
    // Case3.insert(9, 9);
    // Case3.insert(11, 11);
    // Case3.insert(12, 12);
    // Case3.remove(1);

    // std::cout << Case3.to_string_pre_order() << '\n';
    // std::cout << Case3.to_string_level_order() << '\n';

    // // Stackoverflow #2
    // // DETELE Single Rotation
    // // LL SUCCESS
    // AVLTree_t<int, int> LL;
    // // Root
    // LL.insert(10, 10);
    // // ChildNode
    // LL.insert(20, 20);
    // LL.insert(0, 0);
    // LL.insert(-10, -10);
    // LL.insert(15, 15);
    // LL.insert(30, 30);
    // LL.insert(40, 40);

    // LL.remove(-10);
    // LL.remove(100);

    // std::cout << LL.to_string_pre_order() << '\n';
    // std::cout << LL.to_string_level_order() << '\n';

    // // RR SUCCESS
    // AVLTree_t<int, int> RR;
    // RR.insert(10, 10);
    // RR.insert(20, 20);
    // RR.insert(0, 0);
    // RR.insert(5, 5);
    // RR.insert(-5, -5);
    // RR.insert(15, 15);
    // RR.insert(-10, -10);

    // RR.remove(15);

    // std::cout << RR.to_string_pre_order() << '\n';
    // std::cout << RR.to_string_level_order() << '\n';

    // // DETELE Double Rotation
    // // RL SUCCESSs
    // AVLTree_t<int, int> RL;

    // RL.insert(10, 10);

    // RL.insert(20, 20);
    // RL.insert(0, 0);

    // RL.insert(5, 5);
    // RL.insert(-5, -5);
    // RL.insert(15, 15);
    // RL.insert(25, 25);

    // RL.insert(-3, -3);
    // RL.insert(13, 13);
    // RL.insert(18, 18);
    // RL.insert(28, 28);

    // RL.insert(11, 11);

    // RL.remove(-3);

    // std::cout << RL.to_string_pre_order() << '\n';
    // std::cout << RL.to_string_level_order() << '\n';

    // // LR SUCCESS
    // AVLTree_t<int, int> LR;
    // // Root
    // LR.insert(10, 10);
    // //Children
    // LR.insert(20, 20);
    // LR.insert(0, 0);

    // LR.insert(5, 5);
    // LR.insert(-5, -5);
    // LR.insert(15, 15);
    // LR.insert(25, 25);

    // LR.insert(-10, -10);
    // LR.insert(3, 3);
    // LR.insert(8, 8);
    // LR.insert(18, 18);

    // LR.insert(9, 9);

    // LR.remove(18);

    // std::cout << LR.to_string_pre_order() << '\n';
    // std::cout << LR.to_string_level_order() << '\n';

    return 0;
}
