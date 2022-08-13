import heapq
class node:
    def __init__(self, key, id):
        self.key = key
        self.id = id
    def __lt__(self, other):
        return self.key < other.key
    
def w(a, b):
    return ((a[0] - b[0])**2 + (a[1] - b[1])**2)**(1/2)

def min_distance(points, n):
    distance = 0.0
    G = [node(0x7fffffff, i) for i in range(n)]
    G[0].key = 0
    Q = [G[i] for i in range(n)]
    while Q:
        u = heapq.heappop(Q)
        distance += u.key
        for i in range(n):
            v = G[i]
            if v.id == u.id:
                continue
            if v in Q and w(points[u.id], points[v.id]) < v.key:
                v.key = w(points[u.id], points[v.id])
        heapq.heapify(Q)
    return distance

if __name__ == "__main__":
    n = int(input())
    points = []
    for i in range(n):
        x, y = map(float, input().split())
        points.append((x, y))
    print(f"{min_distance(points, n):.6f}")