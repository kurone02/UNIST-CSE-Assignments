#include <bits/stdc++.h>
using namespace std;

int main(){
    int n; cin >> n;
    int *a = new int[n];
    for(int i = 0; i < n; i++) cin >> a[i];
    sort(a, a + n);
    int k = a[n / 2];
    long long res = 0;
    for(int i = 0; i < n; i++){
        res += abs(a[i] - k);
    }
    cout << res;
    delete[] a;
    return 0;
}
