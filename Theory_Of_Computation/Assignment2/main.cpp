#include <iostream>
#include <cstdlib>
#include <map>
#include <string>
#include <vector>
using namespace std;
typedef char symbol;

class ContextFreeGrammar {

    vector<symbol> variables;
    vector<symbol> terminals;
    symbol start_variable;
    map<symbol, vector<string>> productions;

    map<symbol, bool> is_variable, is_terminal;

    map<symbol, bool> is_generating, is_reachable;

public:

    ContextFreeGrammar(const vector<symbol> &V, const vector<symbol> &T, const symbol &S, map<symbol, vector<string>> P):
    variables(V), terminals(T), start_variable(S), productions(P) {
        for(symbol v: V) is_variable[v] = true;
        for(symbol t: T) is_terminal[t] = true;
        buildReachable(S);
    }

    void buildReachable(const symbol &x) {
        if(is_reachable.find(x) != is_reachable.end()) return;
        is_reachable[x] = true;
        for(string s: productions[x]) {
            for(symbol v: s) {
                buildReachable(v);
            }
        }
    }

    bool isGenerating(const symbol &x) {
        if(is_terminal[x]) return is_generating[x] = true;
        if(is_generating.find(x) != is_generating.end()) return is_generating[x];
        is_generating[x] = false;
        for(string s: productions[x]) {
            for(symbol v: s) {
                is_generating[x] |= isGenerating(v);
            }
        }
        return is_generating[x];
    }

    bool isReachable(const symbol &x) { return is_reachable[x]; }

    vector<symbol> getGenerating() {
        vector<symbol> generating;
        for(symbol v: variables) if(isGenerating(v)) generating.push_back(v);
        for(symbol v: terminals) if(isGenerating(v)) generating.push_back(v);
        return generating;
    }

    vector<symbol> getReachable() {
        vector<symbol> reachable;
        for(symbol v: variables) if(isReachable(v)) reachable.push_back(v);
        for(symbol v: terminals) if(isReachable(v)) reachable.push_back(v);
        return reachable;
    }

};

int main() {
    map<symbol, vector<string>> P;
    P['S'] = {"ASB", "AB"};
    P['A'] = {"aAS", "a", "aA"};
    P['B'] = {"SbS", "aAS", "a", "aA", "bb", "bS", "Sb", "b"};
    ContextFreeGrammar CFG({'S', 'A', 'B'}, {'a', 'b'}, 'S', P);

    vector<symbol> x = CFG.getGenerating();

    for(symbol v: x) {
        cout << v << ' ';
    }
    cout << '\n';

    x = CFG.getReachable();

    for(symbol v: x) {
        cout << v << ' ';
    }
    cout << '\n';

    return 0;
}