#include <bits/stdc++.h>
using namespace std;

random_device rd;
mt19937 rng(rd());

int get_rand_int(int l, int r){
    uniform_int_distribution<> distrib(l, r);
    return distrib(rng);
}

double get_rand_float(int l, int r){
    uniform_real_distribution<> distrib(l, r);
    return distrib(rng);
}

string int_to_str(const int &x){
    stringstream ss;
    ss << x;
    string res; ss >> res;
    return res;
}

int main(int argc, char *argv[]){
    if(argc < 2){
        cout << "Not enough arguments" << endl;
        return 0;
    }
    if(strcmp(argv[1], "gen") && strcmp(argv[1], "py") && strcmp(argv[1], "cpp")){
        cout << "Invalid language" << endl;
        return 0;
    }
    int nTests = 100;
    for(int __ = 1; __ <= nTests; __++){
        cout << "Running test " << __ << ": ";
        if(argc == 2){
            if(!strcmp(argv[1], "gen")){
                ofstream fi("test/" + int_to_str(__) + ".inp");
                int n = get_rand_int(1, 1000);
                fi << n << '\n';
                for(int i = 0; i < n; i++) fi << fixed << setprecision(6) << get_rand_float(1, 100000) << ' ' << get_rand_float(1, 1000000) << '\n';
                fi.close();
                system(("./sol < test/" + int_to_str(__) + ".inp" +" > test/" + int_to_str(__) + ".ans").c_str());
                cout << endl;
                continue;
            } else{
                // system(("./sol < test/" + int_to_str(__) + ".inp" +" > ans.txt").c_str());
                system(("./main < test/" + int_to_str(__) + ".inp" +" > out.txt").c_str());
            }
        } else if(strcmp(argv[1], "cpp") == 0){
            string file_name = argv[2];
            // system(("./sol < test/" + int_to_str(__) + ".inp" +" > ans.txt").c_str());
            system(("./" + file_name  + " < test/" + int_to_str(__) + ".inp" +" > out.txt").c_str());
        } else if(strcmp(argv[1], "py") == 0){
            string file_name = argv[2];
            // system(("./sol < test/" + int_to_str(__) + ".inp" +" > ans.txt").c_str());
            system(("python3 " + file_name  + " < test/" + int_to_str(__) + ".inp" +" > out.txt").c_str());
        }
        if(system(("diff test/" + int_to_str(__) + ".ans out.txt").c_str()) != 0){
            cout << "WRONG!\n";
            break;
        } else{
            cout << "CORRECT!\n";
        }
    }
    return 0;
}
