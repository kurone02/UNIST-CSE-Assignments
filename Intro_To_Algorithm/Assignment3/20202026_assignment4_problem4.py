from math import sqrt
from heapq import heappop, heappush

INF = 1e9 + 7

def sqr(x):
    return x * x

def distance_between(p1, p2):
    return sqrt(sqr(p1[0] - p2[0]) + sqr(p1[1] - p2[1]))

def min_distance(points, n):
    distance = 0
    d = [INF for i in range(n)]

    d[0] = 0
    pq = [(0, 0)]

    while pq:
        curDis, u = heappop(pq)
        if curDis != d[u]:
            continue
        distance += d[u]
        d[u] = -INF
        for v in range(n):
            if v == u:
                continue
            w = distance_between(points[u], points[v])
            if d[v] > w:
                d[v] = w
                heappush(pq, (d[v], v))

    return distance

if __name__ == "__main__":
    n = int(input())
    points = []
    for i in range(n):
        x, y = map(float, input().split())
        points.append((x, y))
    print(f"{min_distance(points, n):.6f}")