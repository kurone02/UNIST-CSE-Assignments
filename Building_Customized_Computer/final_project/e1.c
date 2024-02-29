#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
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
    // vecz = vecx + vecy
    __asm__ volatile("add %0, %1, %2" 
            : "=r"(vecz) : "r"(vecx), "r"(vecy));
    __store_vec(z, vecz);
}

void vector_add_simd(int8_t *c, int8_t *a, int8_t *b, int n) {
    int i = 0;
    for(; i < n; i += 8) {
        __tvadd(c + i, a + i, b + i);
    }
    for(; i < n; i++) {
        c[i] = a[i] + b[i];
    }
}

void vector_add_norm(int8_t *c, int8_t *a, int8_t *b, int n) {
    for(int i = 0; i < n; i++) {
        c[i] = a[i] + b[i];
    }
}

uint64_t read_cycles(void) {
  uint64_t cycles;
  asm volatile ("rdcycle %0" : "=r" (cycles));
  return cycles;
}

void initialize_array(int8_t *a, int n) {
    for(int i = 0; i < n; i++) {
        a[i] = rand() % 256 - 128;
    }
}

int main() {
    printf("-----------------------------------------------------------------\n");

    printf("SIMD Test! A benchmark between SIMD and normal addition\n");

    srand(124353);

    printf("-----------------------------------------------------------------\n");

    int n = 10;
    printf("Initialize 2 random arrays of size %d!\n", n);
    int8_t a[n], b[n];
	initialize_array(a, n); a[0] = 128;
    initialize_array(b, n);

    printf("-----------------------------------------------------------------\n");

    int8_t c[n];

    printf("Calculating using SIMD\n", n);
    uint64_t start_clock_simd = read_cycles();
    vector_add_simd(c, a, b, n);
    uint64_t end_clock_simd = read_cycles();

    printf("The number of cycles passed when using SIMD: %ld\n", end_clock_simd - start_clock_simd);

    for(int i = 0; i < n; i++) {
        printf("%d + %d = %d\n", a[i], b[i], c[i]);
    }

    printf("-----------------------------------------------------------------\n");

    printf("Calculating using normal addition\n", n);
    uint64_t start_clock_norm = read_cycles();
    vector_add_norm(c, a, b, n);
    uint64_t end_clock_norm = read_cycles();

    printf("The number of cycles passed when using normal addition: %ld\n", end_clock_norm - start_clock_norm);

    for(int i = 0; i < n; i++) {
        printf("%d + %d = %d\n", a[i], b[i], c[i]);
    }

    printf("-----------------------------------------------------------------\n");

    // for(int n = 10; n <= 5000; n+=50) {
    //     int8_t a[n], b[n];
    //     initialize_array(a, n);
    //     initialize_array(b, n);
    //     int8_t c[n];

    //     uint64_t start_clock_simd = read_cycles();
    //     vector_add_simd(c, a, b, n);
    //     uint64_t end_clock_simd = read_cycles();

    //     uint64_t start_clock_norm = read_cycles();
    //     vector_add_norm(c, a, b, n);
    //     uint64_t end_clock_norm = read_cycles();

    //     printf("(%ld, %ld), ", end_clock_simd - start_clock_simd, end_clock_norm - start_clock_norm);
    // }

    return 0;
}
