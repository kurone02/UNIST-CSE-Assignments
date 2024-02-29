#include <bits/stdc++.h>
using namespace std;
const string TIME_LIMIT = "300s";


mt19937 rd(chrono::steady_clock::now().time_since_epoch().count());
#define rand rd

// Viết lại hàm random để sử dụng cho thuận tiện. Hàm random này sinh ngẫu nhiên số trong phạm vi long long, số sinh ra >= l và <= h.
long long Rand(long long l, long long h) {
    assert(l <= h);
    return l + rd() * 1LL * rd() % (h - l + 1);
}



class SampleTest {
    void announceStart() {
        cerr << "---------------START TESTING SAMPLE TEST CASES---------------\n";
    }

    void announceEnd() {
        cerr << "----------------END TESTING SAMPLE TEST CASES----------------\n";
    }

public:
    void testComputeGameTree() {
        const filesystem::path sandbox{"spec"};
    
        cerr << "Testing ComputeGameTree:\n";
        for(auto const& dir_entry : std::filesystem::directory_iterator{sandbox}) {
            string game_spec_file = dir_entry.path();
            cerr << "RUNNING " << game_spec_file << " -- ";
            if(game_spec_file.rfind("spec/spec5", 0) == 0) {
                cerr << "skipped due to large input\n";
                continue;
            }
            int exit_code = system(("timeout " + TIME_LIMIT + " ./game_tree " + game_spec_file + " > output.txt").c_str());
            if(exit_code != 0) {
                cerr << "TIME LIMIT EXCEEDED!\n";
                continue;
            }
            system(("./game_tree_pruning_linux " + game_spec_file + " > answer.txt").c_str());
            if(system("bash -c \"diff <(head -n 1 output.txt) <(head -n 1 answer.txt)\"") != 0) {
                cerr << "WRONG ANSWER!\n";
            } else {
                cerr << "ACCEPTED!\n";
            }
        }
    }

    void testPrintGameTree() {
        const filesystem::path sandbox{"spec"};
    
        cerr << "Testing PrintGameTree:\n";
        for(auto const& dir_entry : std::filesystem::directory_iterator{sandbox}) {
            string game_spec_file = dir_entry.path();
            string complete_tree_file = "tree/tree-complete-" + game_spec_file.substr(5);
            cerr << "RUNNING " << game_spec_file << " -- ";
            if(game_spec_file.rfind("spec/spec5", 0) == 0) {
                cerr << "skipped due to large input\n";
                continue;
            }
            int exit_code = system(("timeout " + TIME_LIMIT + " ./game_tree -v " + game_spec_file + " > output.txt").c_str());
            if(exit_code != 0) {
                cerr << "TIME LIMIT EXCEEDED!\n";
                continue;
            }
            system(("./stateset_diff_linux " + game_spec_file + ' ' + complete_tree_file + " output.txt").c_str());
        }
    }

    void testPlayAsFirstPlayer() {
        const filesystem::path sandbox{"spec"};
    
        cerr << "Testing PlayAsFirstPlayer:\n";
        for(auto const& dir_entry : std::filesystem::directory_iterator{sandbox}) {
            string game_spec_file = dir_entry.path();
            string complete_tree_file = "tree/tree-complete-" + game_spec_file.substr(5);
            cerr << "RUNNING " << game_spec_file << " -- ";
            if(game_spec_file.rfind("spec/spec5", 0) == 0) {
                cerr << "skipped due to large input\n";
                continue;
            }
            system(("python3 play.py " + game_spec_file + " ./game_tree ./game_tree_pruning_linux > game_simulator_output.txt").c_str());
            system(("python3 play.py " + game_spec_file + " ./game_tree_pruning_linux ./game_tree_pruning_linux > game_simulator_answer.txt").c_str());
            if(system("bash -c \"diff <(tail -n 1 game_simulator_output.txt) <(tail -n 1 game_simulator_answer.txt)\"") != 0) {
                cerr << "WRONG MOVES!\n";
            } else {
                cerr << "ACCEPTED!\n";
            }
        }
    }

    void testPlayAsSecondPlayer() {
        const filesystem::path sandbox{"spec"};
    
        cerr << "Testing PlayAsSecondPlayer:\n";
        for(auto const& dir_entry : std::filesystem::directory_iterator{sandbox}) {
            string game_spec_file = dir_entry.path();
            string complete_tree_file = "tree/tree-complete-" + game_spec_file.substr(5);
            cerr << "RUNNING " << game_spec_file << " -- ";
            if(game_spec_file.rfind("spec/spec5", 0) == 0) {
                cerr << "skipped due to large input\n";
                continue;
            }
            system(("python3 play.py " + game_spec_file + " ./game_tree_pruning_linux ./game_tree  > game_simulator_output.txt").c_str());
            system(("python3 play.py " + game_spec_file + " ./game_tree_pruning_linux ./game_tree_pruning_linux > game_simulator_answer.txt").c_str());
            if(system("bash -c \"diff <(tail -n 1 game_simulator_output.txt) <(tail -n 1 game_simulator_answer.txt)\"") != 0) {
                cerr << "WRONG MOVES!\n";
            } else {
                cerr << "ACCEPTED!\n";
            }
        }
    }

    void testAll() {
        announceStart();
        testComputeGameTree();
        cerr << "------------------------------------------\n";
        testPrintGameTree();
        cerr << "------------------------------------------\n";
        testPlayAsFirstPlayer();
        cerr << "------------------------------------------\n";
        testPlayAsSecondPlayer();
        announceEnd();
    }

}sample_test;



class CustomTest {

    void announceStart() {
        cerr << "---------------START TESTING CUSTOM TEST CASES---------------\n";
    }

    void announceEnd() {
        cerr << "----------------END TESTING CUSTOM TEST CASES----------------\n";
    }

public:

    void generateGameSpec(const string file_name) {
        ofstream inp(file_name);
        int n = 4, m = 3;
        vector<int> cells;
        for(int i = 0; i < n * m; i++) cells.push_back(i);

        vector<bool> check_block(cells.size(), false);

        int nelems = Rand(max(0, m * n - 32), max(n, m));

        vector<int> removed_cell;
        std::sample(cells.begin(), cells.end(), std::back_inserter(removed_cell), nelems, std::mt19937{std::random_device{}()});
        for(auto x: removed_cell) {
            check_block[x] = true;
            cells.erase(remove(cells.begin(), cells.end(), x), cells.end());
        }

        inp << n << ' ' << m << '\n';
        for(int i = 0; i < n; i++) {
            for(int j = 0; j < m; j++) {
                if(check_block[i * m + j]) inp << -1 << ' ';
                else inp << i * m + j << ' ';
            }
            inp << '\n';
        }

        int n_win_seq = Rand(1, 10);
        for(int i = 0; i < n_win_seq; i++) {
            vector<int> win_seq;
            std::sample(cells.begin(), cells.end(), std::back_inserter(win_seq), Rand(min(n, m), cells.size()), std::mt19937{std::random_device{}()});
            inp << win_seq.size() << ' ';
            for(auto x: win_seq) inp << x << ' ';
            inp << '\n';
        }

        inp << -1 << '\n';

        inp.close();
    }


    void testComputeGameTree(const int n_test=10) {

        cerr << "Testing ComputeGameTree:\n";
        string game_spec_file = "custom_spec/spec.txt";
        for(int test_id = 1; test_id <= n_test; test_id++) {
            generateGameSpec(game_spec_file);
            cerr << "RUNNING test " << test_id << " -- ";
            int exit_code = system(("timeout " + TIME_LIMIT + " ./game_tree " + game_spec_file + " > output.txt").c_str());
            if(exit_code != 0) {
                cerr << "TIME LIMIT EXCEEDED!\n";
                continue;
            }
            system(("./game_tree_pruning_linux " + game_spec_file + " > answer.txt").c_str());
            if(system("bash -c \"diff <(head -n 1 output.txt) <(head -n 1 answer.txt)\"") != 0) {
                cerr << "WRONG ANSWER!\n";
                break;
            } else {
                cerr << "ACCEPTED!\n";
            }
        }
    }

    void testPrintGameTree(const int n_test=10) {
    
        cerr << "Testing PrintGameTree:\n";
        string game_spec_file = "custom_spec/spec.txt";
        for(int test_id = 1; test_id <= n_test; test_id++) {
            cerr << "RUNNING " << game_spec_file << " -- ";
            int exit_code = system(("timeout " + TIME_LIMIT + " ./game_tree -v " + game_spec_file + " > output.txt").c_str());
            if(exit_code != 0) {
                cerr << "TIME LIMIT EXCEEDED!\n";
                continue;
            }
            system(("timeout " + TIME_LIMIT + " ./game_tree_complete_linux -v " + game_spec_file + " > answer.txt").c_str());
            system(("./stateset_diff_linux " + game_spec_file + " answer.txt output.txt").c_str());
        }
    }

    void testPlayAsFirstPlayer(const int n_test=10) {

        cerr << "Testing PlayAsFirstPlayer:\n";
        string game_spec_file = "custom_spec/spec.txt";
        for(int test_id = 1; test_id <= n_test; test_id++) {
            generateGameSpec(game_spec_file);
            cerr << "RUNNING test " << test_id << " -- ";
            system(("python3 play.py " + game_spec_file + " ./game_tree ./game_tree_pruning_linux  > game_simulator_output.txt").c_str());
            system(("python3 play.py " + game_spec_file + " ./game_tree_pruning_linux ./game_tree_pruning_linux > game_simulator_answer.txt").c_str());
            if(system("bash -c \"diff <(tail -n 1 game_simulator_output.txt) <(tail -n 1 game_simulator_answer.txt)\"") != 0) {
                cerr << "WRONG MOVES!\n";
                break;
            } else {
                cerr << "ACCEPTED!\n";
            }
        }
    }

    void testPlayAsSecondPlayer(const int n_test=10) {

        cerr << "Testing PlayAsSecondPlayer:\n";
        string game_spec_file = "custom_spec/spec.txt";
        for(int test_id = 1; test_id <= n_test; test_id++) {
            generateGameSpec(game_spec_file);
            cerr << "RUNNING test " << test_id << " -- ";
            system(("python3 play.py " + game_spec_file + " ./game_tree_pruning_linux ./game_tree  > game_simulator_output.txt").c_str());
            system(("python3 play.py " + game_spec_file + " ./game_tree_pruning_linux ./game_tree_pruning_linux > game_simulator_answer.txt").c_str());
            if(system("bash -c \"diff <(tail -n 1 game_simulator_output.txt) <(tail -n 1 game_simulator_answer.txt)\"") != 0) {
                cerr << "WRONG MOVES!\n";
                break;
            } else {
                cerr << "ACCEPTED!\n";
            }
        }
    }

    void testAll() {
        announceStart();
        testComputeGameTree();
        cerr << "------------------------------------------\n";
        testPrintGameTree();
        cerr << "------------------------------------------\n";
        testPlayAsFirstPlayer();
        cerr << "------------------------------------------\n";
        testPlayAsSecondPlayer();
        announceEnd();
    }


}custom_test;



int main() {
    ios_base::sync_with_stdio(false);
    
    sample_test.testAll();

    custom_test.testAll();


    return 0;
}

/*
1 0
3 0
1 1
3 1
0 3
2 2
1 3

*/