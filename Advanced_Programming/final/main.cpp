#include "shape.h"
#include <iostream>
#include <cstddef>
#include <climits>
#include <iomanip>
#include <vector>
#include <memory>

using namespace std;

typedef shared_ptr<shape> shape_ptr;

vector<shape_ptr> read_all_shapes(istream& in) {
    vector<shape_ptr> input_shape;
    while(!in.eof()) {
        shape_ptr new_shape = shape_ptr(read_one_shape(in));
        if(new_shape == nullptr) continue;
        input_shape.push_back(new_shape);
        if(!in){
            in.clear();
            in.ignore(SSIZE_MAX, '\n');
            continue;
        }
    }
    return input_shape;
}

shape_ptr get_max_area(vector<shape_ptr> shapes, size_t &id) {
    shape_ptr result = shapes[0];
    id = 0;
    for(size_t i = 1; i < shapes.size(); i++) {
        shape_ptr x = shapes[i];
        if(result->area() < x->area()){
            result = x;
            id = i;
        }
    }
    return result;
}

void swap(shape_ptr &x, shape_ptr &y){
    shape_ptr temp = x;
    x = y;
    y = temp;
}

int main() {

    vector<shape_ptr> input_shape = read_all_shapes(cin);
    cout << fixed << setprecision(4);
    size_t n = input_shape.size();
    for(shape_ptr x: input_shape) {
        cout << setw(10) << x->area() << ' ' << *x << endl;
    }

    size_t id = 0;
    shape_ptr biggest = get_max_area(input_shape, id);
    cout << "Biggest: " << *biggest << endl;

    swap(input_shape[id], input_shape[n - 1]);
    input_shape.pop_back();
    biggest = get_max_area(input_shape, id);
    cout << "Second: " << *biggest << endl;

    return 0;
}