#include <stdio.h>
int func4(int x, int y, int z){
	  int a = x - y;
    int b = a;
    b = (unsigned)b >> 31;
    b += a; b >>= 1; b += y;
    if(b > z){
        a = func4(b - 1, y, z);
        b += a;
    } else if(b < z){
        a = func4(x, b + 1, z);
        b += a;
    }
    a = b;
    return a;
}
int main() {
    for(int i = 0; i <= 14; i++)
        printf("i = %d -> %d\n", i, func4(14, 0, i));
	  return 0;
}