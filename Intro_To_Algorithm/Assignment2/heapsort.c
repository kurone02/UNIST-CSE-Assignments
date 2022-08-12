#include <stdio.h>
#include <stdlib.h>

void swap(int *x, int *y){
    int temp = *y;
    *y = *x;
    *x = temp;
}

unsigned left_child(unsigned x){
    return x << 1;
}

unsigned right_child(unsigned x){
    return (x << 1) | 1;
}

void max_heapify(int *a, unsigned heap_size, unsigned i){
    unsigned l = left_child(i);
    unsigned r = right_child(i);
    unsigned largest = 0;
    if(l <= heap_size && a[l] > a[i])
        largest = l;
    else largest = i;
    if(r <= heap_size && a[r] > a[largest])
        largest = r;
    if(largest != i){
        swap(a + i, a + largest);
        max_heapify(a, heap_size, largest);
    }
}

void build_max_heap(int *a, unsigned n, unsigned *heap_size){
    unsigned i;
    *heap_size = n;
    for(i = n / 2; i >= 1; i--)
        max_heapify(a, *heap_size, i);
}

void heap_sort(int *a, unsigned n){
    unsigned heap_size = 0;
    unsigned i;
    build_max_heap(a, n, &heap_size);
    for(i = n; i >= 2; i--){
        swap(a + 1, a + i);
        heap_size--;
        max_heapify(a, heap_size, 1);
    }
}

long long solve(int *arr, unsigned n){
    long long res = 0;
    int *a = malloc((n + 1) * sizeof(int));
    int k;
    unsigned i;
    for(i = 1; i <= n; i++) a[i] = arr[i - 1];
    heap_sort(a, n);
    k = a[(n + 1) / 2];
    for(i = 1; i <= n; i++){
        if(k < a[i]) res += a[i] - k;
        else res += k - a[i];
    }
    free(a);
    return res;
}

int main(){
    int n, *a;
    unsigned i;
    scanf("%d", &n);
    a = malloc(n * sizeof(int));
    for(i = 0; i < n; i++){
       scanf("%d", a + i); 
    }
    printf("%lld", solve(a, n));
    free(a);
    return 0;
}
