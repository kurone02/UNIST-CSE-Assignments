from math import sqrt

heap_size = 0

class TEdges:
    def __init__(self, u=0, v=0, w=0):
        self.u = u
        self.v = v
        self.w = w

    def __str__(self):
        return f"(u={self.u}, v={self.v}, w={self.w:.6f})"

def left_child(x):
    return x << 1

def right_child(x):
    return (x << 1) | 1

def compare(x, y):
    return x.w > y.w

def max_heapify(a, i):
    global heap_size
    l = left_child(i)
    r = right_child(i)
    largest = 0
    if l <= heap_size and compare(a[l], a[i]):
        largest = l
    else:
        largest = i
    if r <= heap_size and compare(a[r], a[largest]):
        largest = r
    if largest != i:
        a[i], a[largest] = a[largest], a[i]
        max_heapify(a, largest)

def build_max_heap(a, n):
    global heap_size
    heap_size = n
    for i in range(n // 2, 0, -1):
        max_heapify(a, i)

def heap_sort(a, n):
    global heap_size
    build_max_heap(a, n)
    for i in range(n, 1, -1):
        a[1], a[i] = a[i], a[1]
        heap_size -= 1
        max_heapify(a, 1)

def find(lab, x):
    if lab[x] < 0: return x
    lab[x] = find(lab, lab[x])
    return lab[x]

def join(lab, x, y):
    if x == y: return
    if lab[x] > lab[y]: x, y = y, x
    lab[x] += lab[y]
    lab[y] = x

def sqr(x): 
    return x * x

def distance_between(p1, p2):
    return sqrt(sqr(p1[0] - p2[0]) + sqr(p1[1] - p2[1]))

def min_distance(points, n):
    distance = 0.0

    a = [TEdges() for i in range(n * (n - 1) // 2 + 1)]
    size_a = 0
    for i in range(n):
        for j in range(i + 1, n):
            size_a += 1
            a[size_a] = TEdges(i, j, distance_between(points[i], points[j]))

    # a.sort(key=lambda x: x.w)

    
    heap_sort(a, size_a)
    lab = [-1 for i in range(n)]

    for i in range(1, size_a + 1):
        x = find(lab, a[i].u)
        y = find(lab, a[i].v)
        if x == y: continue
        join(lab, x, y)
        distance += a[i].w

    return distance

if __name__ == "__main__":
    n = int(input())
    points = [[0, 0] for i in range(n)]
    for i in range(n):
        x, y = map(float, input().split())
        points[i][0] = x
        points[i][1] = y
    print(f"{min_distance(points, n):.6f}")