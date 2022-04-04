#!/bin/bash
g++ -o test test.cpp Tree.h AVLTree.h RBTree.h -Wall -std=c++11 -O3
./test