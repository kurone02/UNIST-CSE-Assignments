#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define MAX 1000

struct TEdges{
    int u, v;
    double length;
};

void swap_int(int *x, int *y){
    int temp = *y;
    *y = *x;
    *x = temp;
}

void swap(struct TEdges *x, struct TEdges *y){
    struct TEdges temp = *y;
    *y = *x;
    *x = temp;
}

int left_child(int x){
    return x << 1;
}

int right_child(int x){
    return (x << 1) | 1;
}

int compare(struct TEdges x, struct TEdges y){
    return x.length > y.length;
}

void max_heapify(struct TEdges *a, int heap_size, int i){
    int l = left_child(i);
    int r = right_child(i);
    int largest = 0;
    if(l <= heap_size && compare(a[l], a[i]))
        largest = l;
    else largest = i;
    if(r <= heap_size && compare(a[r], a[largest]))
        largest = r;
    if(largest != i){
        swap(a + i, a + largest);
        max_heapify(a, heap_size, largest);
    }
}

void build_max_heap(struct TEdges *a, int n, int *heap_size){
    int i;
    *heap_size = n;
    for(i = n / 2; i >= 1; i--)
        max_heapify(a, *heap_size, i);
}

void heap_sort(struct TEdges *a, int n){
    int heap_size = 0;
    int i;
    build_max_heap(a, n, &heap_size);
    for(i = n; i >= 2; i--){
        swap(a + 1, a + i);
        heap_size--;
        max_heapify(a, heap_size, 1);
    }
}

int find(int *lab, int x){
    if(lab[x] < 0) return x;
    return lab[x] = find(lab, lab[x]);
}

void join(int *lab, int x, int y){
    if(x == y) return;
    if(lab[x] > lab[y]) swap_int(&x, &y);
    lab[x] += lab[y];
    lab[y] = x;
}

double sqr(double x){
    return x * x;
}

double distance_between(double *p1, double *p2){
    return sqrt(sqr(p1[0] - p2[0]) + sqr(p1[1] - p2[1]));
}

double min_distance(double points[MAX][2], int n){
    int i, j, x, y, size_a;
    int *lab;
    struct TEdges *a;
    double distance = 0.0;

    a = malloc((n * (n - 1) / 2 + 1) * sizeof(struct TEdges));
    size_a = 0;
    for(i = 0; i < n; i++){
        for(j = i + 1; j < n; j++){
            size_a++;
            a[size_a].u = i;
            a[size_a].v = j;
            a[size_a].length = distance_between(points[i], points[j]);
        }
    }

    heap_sort(a, size_a);
    lab = malloc(n * sizeof(int));
    for(i = 0; i < n; i++) lab[i] = -1;
    
    for(i = 1; i <= size_a; i++){
        x = find(lab, a[i].u);
        y = find(lab, a[i].v);
        if(x == y) continue;
        join(lab, x, y);
        distance += a[i].length;
    }

    free(lab);
    free(a);
    return distance;
}

int main(){
    double points[MAX][2];
    int n, i; 
    scanf("%d", &n);
    for(i = 0; i < n; i++){
        scanf("%lf %lf", points[i] + 0, points[i] + 1);
    }

    printf("%.6lf\n", min_distance(points, n));

    return 0;
}