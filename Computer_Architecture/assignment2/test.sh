#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo "Normal testing"

echo "--------------------------------------------------------------------"

declare -i score=0

# Test 1
python main.py -m 0x10000000:0x10000010 -n 50 sample_input/example01.o > my_output
if diff -Naur my_output sample_output/example01
then
    echo -e "Test 1: ${GREEN}Correct${NC}"
    score+=10
else
    echo -e "Test 1: ${RED}Wrong${NC}"
fi

echo "--------------------------------------------------------------------"

# Test 2
python main.py -n 50 sample_input/example02.o > my_output
if diff -Naur my_output sample_output/example02
then
    echo -e "Test 2: ${GREEN}Correct${NC}"
    score+=10
else
    echo -e "Test 2: ${RED}Wrong${NC}"
fi

echo "--------------------------------------------------------------------"

# Test 3
python main.py -n 100 sample_input/example03.o > my_output
if diff -Naur my_output sample_output/example03
then
    echo -e "Test 3: ${GREEN}Correct${NC}"
    score+=10
else
    echo -e "Test 3: ${RED}Wrong${NC}"
fi

echo "--------------------------------------------------------------------"

# Test 4
python main.py -n 100 sample_input/example04.o > my_output
if diff -Naur my_output sample_output/example04
then
    echo -e "Test 4: ${GREEN}Correct${NC}"
    score+=10
else
    echo -e "Test 4: ${RED}Wrong${NC}"
fi

echo "--------------------------------------------------------------------"

# Test 5
python main.py -n 100 sample_input/example05.o > my_output
if diff -Naur my_output sample_output/example05
then
    echo -e "Test 5: ${GREEN}Correct${NC}"
    score+=10
else
    echo -e "Test 5: ${RED}Wrong${NC}"
fi

echo "--------------------------------------------------------------------"

# Test fact
python main.py -n 100 sample_input/fact.o > my_output
if diff -Naur my_output sample_output/fact
then
    echo -e "Test fact: ${GREEN}Correct${NC}"
    score+=10
else
    echo -e "Test fact: ${RED}Wrong${NC}"
fi

echo "--------------------------------------------------------------------"

# Test leaf
python main.py -n 100 sample_input/leaf_example.o > my_output
if diff -Naur my_output sample_output/leaf_example
then
    echo -e "Test leaf: ${GREEN}Correct${NC}"
    score+=10
else
    echo -e "Test leaf: ${RED}Wrong${NC}"
fi

echo "--------------------------------------------------------------------"

echo "Score: ${score}/70"

echo "--------------------------------------------------------------------"
echo "--------------------------------------------------------------------"
echo "--------------------------------------------------------------------"

# echo -e "\nOutput tracing tests\n"

# echo "--------------------------------------------------------------------"

# declare -i score=0

# echo "Example02 tracing:"
# nCycle='0 10 20 30 40 50 60 70 80 90 100'
# for i in $nCycle
# do
#     python main.py -n $i sample_input/example02.o > my_output
#     if diff -Naur my_output sample_output_tracing/example02_${i}cycle
#     then
#         echo -e "Test ${i}cycle: ${GREEN}Correct${NC}"
#         score+=10
#     else
#         echo -e "Test ${i}cycle: ${RED}Wrong${NC}"
#     fi
# done

# echo "Score for Example02_Tracing: ${score}/110"

# echo "--------------------------------------------------------------------"
# echo "--------------------------------------------------------------------"

# score=0

# echo "Fact tracing:"
# nCycle='0 10 20 30 40 50 60 70 80 90 100'
# for i in $nCycle
# do
#     python main.py -m 0x400000:0x400010 -n $i sample_input/fact.o > my_output
#     if diff -Naur my_output sample_output_tracing/fact_${i}cycle
#     then
#         echo -e "Test ${i}cycle: ${GREEN}Correct${NC}"
#         score+=10
#     else
#         echo -e "Test ${i}cycle: ${RED}Wrong${NC}"
#     fi
# done

# echo "Score for Fact_Tracing: ${score}/110"