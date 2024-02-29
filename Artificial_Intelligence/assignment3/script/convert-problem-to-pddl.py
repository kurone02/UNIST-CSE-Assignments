#!/usr/bin/env python3

# Author: Nguyen Minh Duc
# Student ID: 20202026
# EMail: ducnm@unist.ac.kr

import re
import sys

def print_objects(pyramid, deck):
    print("    (:objects")

    print(" " * 8, end='')
    for row in pyramid:
        for card in row:
            if card == "__": continue
            print(card, end=' ')
    print("- CARD")
    
    print(" " * 8, end='')
    for card in deck:
        print(card, end=' ')
    print("- CARD")

    print("    )")

def print_init(pyramid, deck):
    print("    (:init")

    print("        (in-cycle1)\n")

    # for i in range(1, 13):
    #     print(" " * 8, end='')
    #     print(f"(sum-int-13 n{i} n{13 - i})")
    # print()

    card_list = []

    value_table = {
        'A': 1,
        '2': 2,
        '3': 3,
        '4': 4,
        '5': 5,
        '6': 6,
        '7': 7,
        '8': 8,
        '9': 9,
        'X': 10,
        'J': 11,
        'Q': 12,
        'K': 13
    }

    for row in pyramid:
        for card in row:
            if card == "__": continue
            card_list.append(card)
            print(" " * 8, end='')
            print(f"(in-pyramid {card})")

    print()
    
    for card in deck:
        card_list.append(card)
        print(" " * 8, end='')
        print(f"(in-deck {card})")

    print()

    for i in range(len(card_list)):
        if value_table[card_list[i][-1]] == 13:
            print(" " * 8, end='')
            print(f"(king {card_list[i]})")
            continue
        for j in range(len(card_list)):
            if value_table[card_list[i][-1]] + value_table[card_list[j][-1]] == 13:
                print(" " * 8, end='')
                print(f"(sum-card-13 {card_list[i]} {card_list[j]})")
            

    print()

    for i in range(len(pyramid) - 1, 0, -1):
        for j in range(len(pyramid[i])):
            if pyramid[i][j] == "__":
                continue
            if j >= 1:
                print(" " * 8, end='')
                print(f"(covers {pyramid[i][j]} {pyramid[i - 1][j - 1]})")
            if j < len(pyramid[i - 1]):
                print(" " * 8, end='')
                print(f"(covers {pyramid[i][j]} {pyramid[i - 1][j]})")

    print()
    for i in range(1, len(deck)):
        print(" " * 8, end='')
        print(f"(covers {deck[i - 1]} {deck[i]})")

    print("    )")

def print_goal():
    print("    (:goal")
    print("        (empty-pyramid)")
    print("    )")

# Output the PDDL problem file from the problem specification file
# Input:
#   problem_name - the name of the problem
#   pyramid - the cards in the pyramid. It is a double list with a structure:
#             [ [card00], [card10, card11], [card20, card21, card22], ...  ]
#             where card00 is the card the top of the pyramid; card10 and card11 are the cards
#             on the second rows of the pyramid; etc.  A card is a string with two characters.
#             A card "__" means that the position is empty.
#   deck - the list of cards on the deck (deck[0] is the top card, deck[-1] is the bottom card)

def print_pddl(problem_name, pyramid, deck):
    print("(define (problem " + problem_name + ")")

    ##################################################################
    # TODO: Please write code to print the content of the PDDL file. #
    ##################################################################

    print("    (:domain pyramid)")
    
    print_objects(pyramid, deck)

    print_init(pyramid, deck)

    print_goal()

    print(")")

def is_any_duplicate_cards(all_cards):
    for i, card1 in enumerate(all_cards):
        if card1 != "__":
            for card2 in all_cards[i+1:]:
                if card2 != "__":
                    if card1 == card2:
                        return card1
    return ""

def print_usage():
    print("Usage:")
    print()
    print("      ", sys.argv[0], "problem_spec.txt")
    print()

def main():
    if len(sys.argv) != 2:
        print_usage()
        exit(1)

    infile_name = sys.argv[1]
    problem_name = re.sub(r"\.[^\.]+", "", re.sub(r".*\/", "", infile_name))

    pyramid = []
    deck = []
   
    with open(infile_name) as infile:
        for line in infile:
            s = line.strip().upper()
            if s == '': break
            pyramid.append(re.split(" +", s))
        for line in infile:
            s = line.strip().upper()
            if s == '': continue
            deck.extend(re.split(" +", s))

    all_cards = [ x for ls in pyramid for x in ls ] + deck
    r = is_any_duplicate_cards(all_cards)
    if r:
        print("Error: " + r + " is duplicated.")
        return
    print_pddl(problem_name, pyramid, deck)

if __name__ == "__main__":
    main()

