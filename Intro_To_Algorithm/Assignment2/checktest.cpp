#include <bits/stdc++.h>
using namespace std;

const string NAME = "heapsort";
const int NTEST = 100;

string int_to_str(const int &x){
    stringstream ss;
    ss << x;
    string res; ss >> res;
    return res;
}

int main()
{
    for (int iTest = 1; iTest <= NTEST; iTest++)
    {
        
        // system(("python " + NAME + ".py < test/" + int_to_str(iTest) + ".inp > test/" + int_to_str(iTest) + ".out").c_str());
        system((NAME + ".exe < test\\" + int_to_str(iTest) + ".inp > test\\" + int_to_str(iTest) + ".out").c_str());
        // Nếu dùng linux thì thay fc bằng diff
        if (system(("fc test\\" + int_to_str(iTest) + ".out " + "test\\" + int_to_str(iTest) + ".ans").c_str()) != 0)
        {
            cout << "Test " << iTest << ": WRONG!\n";
            return 0;
        }
        cout << "Test " << iTest << ": CORRECT!\n";
    }
    return 0;
}