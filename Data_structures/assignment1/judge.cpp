#include <iostream>
#include <cstdio>
#include <algorithm>
#include <random>
#include <vector>
#include <queue>
#include <map>
#include <fstream>
#include <direct.h>
#include <sstream>
#include <stdlib.h>
using namespace std;

class Test
{
private:
    ofstream fi, fo;
    deque<int> list;
    mt19937 generator;

// -------------------------------------------

public:
    Test(){}
    Test(const string &input_file, const string &output_file, const int &seed)
    {
        fi.open(input_file);
        fo.open(output_file);
        generator.seed(seed);
    }

    ~Test()
    {
        fi.close();
        fo.close();
    }

    int rand(const int &l, const int &r)
    {
        uniform_int_distribution<int> uni(l, r);
        return uni(generator);
    }

    void initialize(const int &size, const int &min_value = 1, const int &max_value = 1000)
    {
        for(int i = 0; i < size; i++) test_AddAtHead(min_value, max_value);
    }

    void test_Get()
    {
        int n = list.size();
        int pos = rand(0, 3 * n / 2);
        fi << "Get " << pos << '\n';
        int jury_ans = -1;
        if(0 <= pos && pos < n) jury_ans = list[pos];
        fo << jury_ans << '\n';
    }

    void test_AddAtHead(const int &min_value = 1, const int &max_value = 1000)
    {
        int added_val = rand(min_value, max_value);
        fi << "AddAtHead " << added_val << '\n';
        list.push_front(added_val);
    }

    void test_AddAtIndex(const int &min_value = 1, const int &max_value = 1000)
    {
        int n = list.size();
        int pos = rand(0, 3 * n / 2) - n / 4;

        int added_val = rand(min_value, max_value);
        if(n > 0 && rand(0, 4)) added_val = list[rand(0, n - 1)];

        fi << "AddAtIndex " << pos << ' ' << added_val << '\n';
        if(pos < 0 || pos > n) return;
        auto it = list.begin() + pos;
        list.insert(it, added_val);
    }

    void test_DeleteAtIndex()
    {
        int n = list.size();
        int pos = rand(0, 3 * n / 2);
        fi << "DeleteAtIndex " << pos << '\n';
        if(pos >= n) return;
        auto it = list.begin() + pos;
        list.erase(it);
    }

    void test_DeleteValue(const int &min_value = 1, const int &max_value = 1000)
    {
        int n = list.size();
        int deleted_val = rand(min_value, max_value);
        if(n > 0 && rand(0, 1)) deleted_val = list[rand(0, n - 1)];
        fi << "DeleteValue " << deleted_val << '\n';
        if(n == 0) return;
        auto it = list.begin();
        while(it != list.end() && *it != deleted_val) it++;
        if(it != list.end()) list.erase(it);
    }

    void test_MoveToHead(const int &min_value = 1, const int &max_value = 1000)
    {
        int n = list.size();
        int moved_val = rand(min_value, max_value);
        if(n > 0 && rand(0, 1)) moved_val = list[rand(0, n - 1)];
        fi << "MoveToHead " << moved_val << '\n';
        if(n == 0) return;
        auto it = list.begin();
        while(it != list.end() && *it != moved_val) it++;
        if(it != list.end())
        {
            list.erase(it);
            list.push_front(moved_val);
        }
    }

    void test_Rotate()
    {
        int n = list.size();
        int k = rand(0, 3 * n / 2);
        fi << "Rotate " << k << '\n';
        if(n == 0) return;
        for(int i = 0; i < k; i++)
        {
            int val = list.back();
            list.pop_back();
            list.push_front(val);
        }
    }

    void test_Reduce()
    {
        fi << "Reduce\n";
        map<int, bool> existed;
        int n = list.size();
        vector<bool> deleted_pos(n);
        for(int i = 0; i < n; i++)
        {
            int val = list[i];
            if(!existed[val]) existed[val] = true;
            else deleted_pos[i] = true;
        }
        deque<int> temp = list;
        list.clear();
        for(int i = 0; i < n; i++)
        {
            if(!deleted_pos[i]) list.push_back(temp[i]);
        }
    }

    void test_K_Reverse()
    {
        int n = list.size();
        int k = rand(1, max(3 * n / 2, 1));
        fi << "K_Reverse " << k << '\n';
        int nGroups = n / k;
        auto head = list.begin();
        auto tail = list.begin();
        for(int i = 0; i / k < nGroups; i++)
        {
            if((i + 1) % k == 0) 
            {
                reverse(head, tail + 1);
                head = tail + 1;
            }
            tail++;
        }
    }

    void test_EvenOddSeparateSort()
    {
        fi << "EvenOddSeparateSort\n";
        int n = list.size();
        vector<int> even, odd;
        for(int v: list)
        {
            if(v & 1) odd.push_back(v);
            else even.push_back(v);
        }
        sort(even.begin(), even.end());
        sort(odd.begin(), odd.end(), greater<int>());
        list.clear();
        for(auto v: even) list.push_back(v);
        for(auto v: odd) list.push_back(v);
    }

    void test_Size()
    {
        fi << "Size\n";
        fo << list.size() << '\n';
    }

    void test_CleanUp()
    {
        fi << "CleanUp\n";
        list.clear();
    }

    void test_Print()
    {
        fi << "Print\n";
        fo << '(';
        for(auto it = list.begin(); it != list.end(); it++)
        {
            fo << *it;
            if(it + 1 != list.end()) fo << ',';
        }
        fo << ')' << '\n';
    }

    void gen_test(const int &rand_num)
    {
        switch (rand_num)
        {
        case 1 ... 10:
            test_Get();
            break;

        case 11 ... 15:
            test_AddAtHead();
            break;
        
        case 16 ... 25:
            test_AddAtIndex();
            break;
        
        case 26 ... 30:
            test_DeleteAtIndex();
            break;

        case 31 ... 35:
            test_DeleteValue();
            break;

        case 36 ... 40:
            test_MoveToHead();
            break;
        
        case 41 ... 50:
            test_Rotate();
            break;
        
        case 51 ... 55:
            test_Reduce();
            break;

        case 56 ... 60:
            test_K_Reverse();
            break;

        case 61 ... 65:
            test_EvenOddSeparateSort();
            break;
        
        case 66 ... 70:
            test_Size();
            break;
        
        case 71 ... 71:
            test_CleanUp();
            break;

        default:
            test_Print();
            break;   
        }  
    }

};

int main()
{
    //string folder = "Test_Case";
    //_mkdir(folder.c_str());
    //_chdir(folder.c_str());
    string problem_code = "Main";
    //_mkdir(problem_code.c_str());
    //_chdir(problem_code.c_str());

    int nTest = 50;

    for(int i = 0; i < nTest; i++)
    {
        string testId;
        stringstream ss; ss << i; ss >> testId;
        string input = problem_code + ".INP";
        string output = problem_code + ".ANS";
        Test gen(input, output, i);

        if(gen.rand(1, 4) == 1) gen.initialize(10 * (i + 1));

        int n_query = 200 + 10 * (i + 1);

        cout << "Running on test " << i << "... ";

        for(int i = 0; i < n_query; i++)
        {
            int rand_num = gen.rand(1, 100);
            gen.gen_test(rand_num);
        }

        int exit_code = system(("" + problem_code).c_str());
        if(exit_code != 0)
        {
            cout << "RTE! Exit code: " << exit_code << '\n';
            return 0;
        }
        if(system(("fc " + problem_code + ".OUT " + problem_code + ".ANS").c_str()) != 0)
        {
            cout << "Wrong answer!\n";
            return 0;
        }
        cout << "Passed\n";

    }    
    return 0;
}