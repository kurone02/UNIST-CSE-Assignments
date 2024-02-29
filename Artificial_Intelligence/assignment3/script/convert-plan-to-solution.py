#!/usr/bin/env python3

# Author: <Your name>
# Student ID: <Your student ID>
# EMail: <Your email>

import re
import sys

# Output a plan in the format that can be read by the validator.
# Input:
#   plan - the list of actions in the sas_plan file.

def print_solution(plan):
    for action in plan:
        s = re.sub(r"\(|\)", "", action).upper()
        if s[0] == ';':
            continue
        terms = s.split(" ")

        ###############################################################
        # TODO: Please write code to print the MATCH or DRAW actions. #
        ###############################################################

        cmd = terms[0]

        if cmd == "DRAW" or cmd == "DECK-CYCLE":
            print("DRAW")
        elif cmd == "MATCH":
            print(f"MATCH {terms[1]} {terms[2]}")
        elif cmd == "MATCH-KING":
            print(f"MATCH {terms[1]}")


def print_usage():
    print("Usage:")
    print()
    print("      ", sys.argv[0], "sas_plan")
    print()

def main():
    if len(sys.argv) != 2:
        print_usage()
        exit(1)

    infile_name = sys.argv[1]

    plan = []
    with open(infile_name) as infile:
        for line in infile:
            s = line.strip()
            if s == '': continue
            plan.append(s)

    print_solution(plan)

if __name__ == "__main__":
    main()
