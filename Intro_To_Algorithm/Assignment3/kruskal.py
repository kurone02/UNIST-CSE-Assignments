from math import sqrt

INF = 1e9 + 7

class TEdges:
    def __init__(self, u, v, w=0):
        self.u = u
        self.v = v
        self.w = w

class TDsu:
    def __init__(self, n = 0):
        self.n = n
        self.lab = [-1 for i in range(n)]

    def find(self, x):
        if self.lab[x] < 0:
            return x
        self.lab[x] = self.find(self.lab[x])
        return self.lab[x]

    def join(self, x, y):
        x, y = self.find(x), self.find(y)
        if x == y:
            return False
        if self.lab[x] > self.lab[y]:
            x, y = y, x
        self.lab[x] += self.lab[y]
        self.lab[y] = x
        return True

def sqr(x):
    return x * x

def distance_between(p1, p2):
    return sqrt(sqr(p1[0] - p2[0]) + sqr(p1[1] - p2[1]))

def construct_edges(points, n):
    edges = []
    for i in range(n):
        for j in range(i + 1, n):
            edges.append(TEdges(i, j, distance_between(points[i], points[j])))
    return edges

def min_distance(points, n):
    distance = 0.0
    edge_list = construct_edges(points, n)
    edge_list.sort(key=lambda x: x.w)
    dsu = TDsu(n)
    tree_edge = 0
    for edge in edge_list:
        if dsu.join(edge.u, edge.v):
            distance += edge.w
            tree_edge += 1
        if tree_edge == n - 1:
            break
    return distance

if __name__ == "__main__":
    n = int(input())
    points = []
    for i in range(n):
        x, y = map(float, input().split())
        points.append((x, y))
    print(f"{min_distance(points, n):.6f}")