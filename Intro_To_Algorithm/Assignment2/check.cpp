#include <bits/stdc++.h>
using namespace std;

random_device rd;
mt19937 rng(rd());

int get_rand_int(int l, int r){
    uniform_int_distribution<> distrib(l, r);
    return distrib(rng);
}

int main(){
    int nTests = 50;
    for(int __ = 1; __ <= nTests; __++){
        cout << "Running test " << __ << ": ";
        ofstream fi("inp.txt");
        int n = 100000;
        fi << n << '\n';
        for(int i = 0; i < n; i++) fi << get_rand_int(1, 10000000) << '\n';
        system("./solution < inp.txt > ans.txt");
        system("./heapsort < inp.txt > out.txt");
        if(system("diff out.txt ans.txt") != 0){
            cout << "WRONG!\n";
        } else{
            cout << "CORRECT!\n";
        }
        fi.close();
    }
    return 0;
}
