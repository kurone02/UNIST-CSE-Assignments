import random

def bruteForce(n, x):
    res = -1
    for i in range(n):
        sum_of_distance = 0
        for j in range(n):
            sum_of_distance += abs(x[j] - x[i])
        if res == -1:
            res = sum_of_distance
        else:
            res = min(res, sum_of_distance)
    return res

def solution(n, x):
    x = sorted(x)
    prof_house = x[n // 2]
    sum_of_distance = 0

    for friend_house in x:
        sum_of_distance += abs(prof_house - friend_house)

    return sum_of_distance

random.seed(a=None, version=2)
flag = True

for _ in range(100):
    n = 1000
    x = [random.randint(1, 1000000000) for i in range(n)]

    brute = bruteForce(n, x)
    ac = solution(n, x)
    print(brute, ac)

    if brute != ac:
        print("WA on test", _)
        flag = False
        break
    else:
        print("test", _, "accepted")
    print()

if flag:
    print("AC!")