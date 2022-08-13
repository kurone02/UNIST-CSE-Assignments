#include <bits/stdc++.h>
using namespace std;
const int MAX = 1e3 + 7;

long double sqr(long double x){ return x * x; }

struct TPoints{
    long double x, y;

    long double dist(TPoints const &other) const {
        return sqrt(sqr(this->x - other.x) + sqr(this->y - other.y));
    }
}points[MAX];

struct TEdge{
    int u, v;
    long double w;

    bool operator <(TEdge const &other) const {
        return this->w < other.w;
    }
}e[MAX * MAX];

int n, m;
int lab[MAX];

int find(int const &x){
    return (lab[x] < 0)? x : lab[x] = find(lab[x]);
}

void join(int x, int y){
    if(x == y) return;
    if(lab[x] > lab[y]) swap(x, y);
    lab[x] += lab[y];
    lab[y] = x;
}

int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);

    cin >> n;
    for(int i = 1; i <= n; i++) cin >> points[i].x >> points[i].y;

    for(int i = 1; i <= n; i++){
        for(int j = i + 1; j <= n; j++){
            e[++m] = {i, j, points[i].dist(points[j])};
        }
    }

    sort(e + 1, e + m + 1);
    for(int i = 1; i <= n; i++) lab[i] = -1;

    long double total_distance = 0;
    for(int i = 1; i <= m; i++){
        int x = find(e[i].u);
        int y = find(e[i].v);
        if(x == y) continue;
        join(x, y);
        total_distance += e[i].w;
    }

    cout << fixed << setprecision(6) << total_distance << endl;

    return 0;
}