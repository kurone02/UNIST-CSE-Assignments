#include <stdio.h>
#include <stdint.h>
typedef uint64_t vecbit;

vecbit __load_vec(int8_t *ptr) {
    return *(uint64_t*)ptr;
}

void __store_vec(int8_t *ptr, vecbit value) {
    *(uint64_t*)ptr = value;
}

void __tvadd(int8_t *z, int8_t *x, int8_t *y) {
    vecbit vecx = __load_vec(x);
    vecbit vecy = __load_vec(y);
    vecbit vecz = 0;
    // vecy = vecx + vecy
    __asm__ volatile("add %0, %1, %2" : "=r"(vecz) : "r"(vecx), "r"(vecy));
    __store_vec(z, vecz);
}

void vector_add(int8_t *c, int8_t *a, int8_t *b, int n) {
    int i = 0;
    for(; i < n; i += 8) {
        __tvadd(c + i, a + i, b + i);
    }
    for(; i < n; i++) {
        c[i] = a[i] + b[i];
    }
}

int main() {
    printf("hello world!\n");
    int n = 8;
    int8_t a[n];
	for(int i = 0; i < n; i++) a[i] = i + 1;
	
	int8_t b[n];
	for(int i = 0; i < n; i++) b[i] = i;
    b[0] = 255;

    int8_t c[n];
    vector_add(c, a, b, n);

    for(int i = 0; i < n; i++) {
        printf("%d + %d = %d\n", a[i], b[i], c[i]);
	}

    return 0;
}
