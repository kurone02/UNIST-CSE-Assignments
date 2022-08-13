#include <bits/stdc++.h>
using namespace std;

const double PI = 4 * atan(1);

int main(){

    srand(time(nullptr));
    ofstream inp("sample-input.txt");
    ofstream out("sample-output.txt");
    for(int i = 1; i <= 100; i++){
        
        out << fixed << setprecision(4);
        if(rand() & 1){
            if(rand() % 3 == 0)
                inp << "vmneriu ghr8gb fjdvb iyg berihub tiy byurhskbj irubg " << endl;
            else
                inp << "igerbehrbvrh reigh uer C 1.2" << endl;
        } else{
            if(rand() & 1){
                if(rand() & 1){
                    double x = rand() % 10000, y = rand() % 10000;
                    inp << "R " << x << ' ' << y << endl;
                    out << setw(10) << x * y << ' ' << "Rectangle("<< x << "," << y << ")" << endl;
                } else{
                    double x = rand() % 10000, y = rand() % 10000;
                    inp << "r " << x << ' ' << y << endl;
                    out << setw(10) << x * y << ' ' << "Rectangle("<< x << "," << y << ")" << endl;
                }
            } else{
                if(rand() & 1){
                    double x = rand() % 10000;
                    inp << "C " << x << endl;
                    out << setw(10) << x * x * PI << ' ' << "Circle("<< x << ")" << endl;
                } else{
                    double x = rand() % 10000;
                    inp << "r " << x << endl;
                    out << setw(10) << x * x * PI << ' ' << "Circle("<< x << ")" << endl;
                }
            }
        }
    }

    return 0;
}