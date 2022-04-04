import random as rng
import subprocess
import re
import os, shutil
from termcolor import colored
from decimal import *
from queue import Queue
from to_postfix import to_postfix

class Expression:
    def __init__(self, expr = "", value = 0):
        self.expr = expr
        self.value = Decimal(value)

    def __str__(self):
        return self.expr


class Tree:
    def __init__(self, expr = "", left = None, right = None):
        self.expr = expr
        self.left = left
        self.right = right

    def __str__(self):
        return f"{(self.expr, self.left, self.right)}"

    def serialize(self):
        q = Queue()
        res = []
        q.put(self)
        while not q.empty():
            node = q.get()
            if node == None:
                res.append("null")
                continue
            res.append(node.expr)
            q.put(node.left)
            q.put(node.right)
        res = f"({','.join(res)})"
        return re.sub("(,null)*\)", ")", res)


def get_all_divisors(x) -> list:
    i = Decimal(1)  
    d = []
    while i * i <= abs(x):
        if x % i == 0:
            d.append(i)
            if i * i != x:
                d.append(x // i)
        i += 1
    return d

def get_random_divisor(x) -> int:
    res = rng.choice(get_all_divisors(x))
    res = -res if rng.randint(0, 5) == 0 else res
    return res


def build_expression(max_depth, mul_div = False, tree_node = None) -> Expression:
    tree_node.left = Tree()
    tree_node.right = Tree()

    num = rng.randrange(1, 7)
    e = Expression()
    
    if num == 1 or max_depth <= 0: # E -> I
        is_int = rng.randint(0, 5)
        e.value = Decimal(str(round(100 * rng.random(), 3) if is_int == 0 else rng.randint(1, 100)))
        if rng.randint(0, 3) == 0:
            e.value = -e.value
        e.expr = str(e.value)
        tree_node.expr = e.expr
        tree_node.left = None
        tree_node.right = None
    elif num == 2: # E -> E + E
        LHS = build_expression(max_depth - 1, False, tree_node.left)
        RHS = build_expression(max_depth - 1, False, tree_node.right)
        e.expr = f"{str(LHS)} + {str(RHS)}"
        e.value = LHS.value + RHS.value
        if mul_div == True:
            e.expr = f"({e.expr})"
        tree_node.expr = "+"
    elif num == 3: # E -> E - E
        LHS = build_expression(max_depth - 1, False, tree_node.left)
        RHS = build_expression(max_depth - 1, True, tree_node.right)
        e.expr = f"{str(LHS)} - {str(RHS)}"
        e.value = LHS.value - RHS.value
        if mul_div == True:
            e.expr = f"({e.expr})"
        tree_node.expr = "-"
    elif num == 4: # E -> M * M | E -> E * E
        LHS = build_expression(max_depth - 1, True, tree_node.left)
        RHS = build_expression(max_depth - 1, True, tree_node.right)
        e.expr = f"{str(LHS)} * {str(RHS)}"
        e.value = LHS.value * RHS.value
        if mul_div == True:
            e.expr = f"({e.expr})"
        tree_node.expr = "*"
    elif num == 5: # E -> M / M | E -> E / E
        LHS = build_expression(max_depth - 1, True, tree_node.left)
        RHS, done = 0, False
        if LHS.value.as_integer_ratio()[1] == 1:
            num = rng.randint(0, 5)
            if num < 5:
                x = get_random_divisor(LHS.value)
                RHS = Expression(str(x), x)
                tree_node.right = Tree(RHS.expr)
                done = True
        if not done:
            RHS = build_expression(max_depth - 1, True, tree_node.right)
        if RHS.value == 0:
            RHS = Expression(f"({str(RHS)}+0.5)", "0.5")
            tree_node.right = Tree(f"({str(RHS)}+0.5)")
        e.expr = f"{str(LHS)} / {str(RHS)}"
        e.value = LHS.value / RHS.value
        if mul_div == True:
            e.expr = f"({e.expr})"
        tree_node.expr = "/"
    elif num == 6: # E -> (E)
        e = build_expression(max_depth - 1, mul_div, tree_node)
        e.expr = f"({e.expr})"
    else: # E -> -(E)
        tree_node.expr = "*"
        tree_node.left = Tree("-1", left = None, right = None)
        e = build_expression(max_depth - 1, mul_div, tree_node.right)
        e.expr = f"(-{e.expr})"
        e.value = -e.value
        if mul_div == True:
            e.expr = f"({e.expr})"
    return e

def main():
    exitcode = subprocess.run("g++ -o assign2 main.cpp stack.h queue.h to_postfix.h tree.h").returncode
    if exitcode != 0:
        print(colored(f"Compile error! Exitcode {exitcode}", "red"))
        return

    shutil.rmtree("WrongTest")
    os.mkdir("WrongTest")
    print(colored(f"Compilation success!", "green"))
    rng.seed(1000)
    score = 0
    for _ in range(20):
        tree_node = Tree()
        e = build_expression(max_depth = 5, mul_div = False, tree_node = tree_node)
        infix = e.expr
        evaluated_value = round(e.value, 4)
        with open("test.inp", "w") as f:
            f.write(infix)
            
        with open("test.ans", "w") as f:
            f.write(f"{to_postfix.infixToPostfix(infix)}\n{str(evaluated_value)}")

        print("---------------------------------------")
        print(f"{e.expr} = {str(e.value)}")
        print(f"Test {_}: ", end='')

        exitcode = subprocess.run("./assign2.exe").returncode
        if exitcode != 0:
            print(colored(f"RTE! Exitcode {exitcode}", "red"))
            with open(f"WrongTest/test{_}.inp", "w") as f:
                f.write(infix)
            with open(f"WrongTest/test{_}.ans", "w") as f:
                f.write(f"{to_postfix.infixToPostfix(infix)}\n{str(evaluated_value)}")
            continue
        
        exitcode = subprocess.run("fc test.out test.ans").returncode
        if exitcode != 0:
            print(colored("Wrong answer!", "red"))
            with open(f"WrongTest/test{_}.inp", "w") as f:
                f.write(infix)
            with open(f"WrongTest/test{_}.ans", "w") as f:
                f.write(f"{to_postfix.infixToPostfix(infix)}\n{str(evaluated_value)}")
            #break
        else:
            print(colored(f"Passed!", "green"))
            score += 5

    print("---------------------------------------")
    color = "green"
    if score < 40:
        color = "red"
    elif score < 70:
        color = "yellow"
    print("Score: ", end = '')
    print(colored(f"{score} / 100", color))


if __name__ == "__main__":
    main()