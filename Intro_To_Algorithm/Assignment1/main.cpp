#include <iostream>
#include <cmath>
#include <bitset>
using namespace std;

int sign(int x){
    return 1 + (~!x + 1) + ((x >> 31) << 1);
}

int main(){

    int x;
    scanf("%d", &x);
    // x = 2147483649;
    cout << x <<'\n';
    cout << sign(x);

    return 0;
}