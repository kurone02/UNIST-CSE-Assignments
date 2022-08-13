#include <iostream>
#include <cstddef>

template<typename T>
T sum(T const *arr, size_t n){
    T total = 0;
    for(size_t i = 0; i < n; i++){
        total += arr[i];
    }
    return total;
}

template<typename T>
class value{
    T val;
public:
    value(T x=0): val(x){}
    T get_value() const { return this->val; }
};

int main(){
    using namespace std;

    int x[] = {3, 4, 5};
    cout << sum<int>(x, 3) << endl;
    double y[] = {9.5, 10, 10.5};
    cout << sum(y, 3) << endl;

    value<double> a(12.4);
    cout << a.get_value() << endl;

    return 0;

}
