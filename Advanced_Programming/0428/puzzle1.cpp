#include <iostream>
#include <climits>

static int const NUM_DIRS = 3;
static int const dx[NUM_DIRS] = {1, 0, 1};
static int const dy[NUM_DIRS] = {0, 1, 1};
static int const W = 5;
static int const H = 4;
static int const board[H][W] = {
    {0, 1, 2, 4, 5},
    {3, 2, 2, 6, 7},
    {4, 3, 2, 7, 8},
    {4, 6, 7, 8, 9}
};

int shortest_path(int last_val, int x, int y, int target_x, int target_y, int *result){
    if(x < 0 || y < 0 || x >= W || y >= H || last_val >= board[y][x]){
        return 0;
    }

    *result = board[y][x];
    if(x == target_x && y == target_y){
        return 1;
    }

    int *down_path = new int[W + H - 1]; 
    int down_len = shortest_path(board[y][x], x, y + 1, target_x, target_y, result + 1);
    for(int i = 0; i < down_len; i++){
        down_path[i] = result[i + 1];
    }
    int *right_path = new int[W + H - 1]; 
    int right_len = shortest_path(board[y][x], x + 1, y, target_x, target_y, result + 1);
    for(int i = 0; i < right_len; i++){
        right_path[i] = result[i + 1];
    } 
    int *diagonal_path = new int[W + H - 1]; 
    int diagonal_len = shortest_path(board[y][x], x + 1, y + 1, target_x, target_y, result + 1);
    for(int i = 0; i < diagonal_len; i++){
        diagonal_path[i] = result[i + 1];
    }
    
    int res = INT_MAX;
    if(down_len != 0 && res > down_len) res = down_len;
    if(right_len != 0 && res > right_len) res = right_len;
    if(diagonal_len != 0 && res > diagonal_len) res = diagonal_len;
    if(res == down_len){
        for(int i = 0; i < down_len; i++){
            result[i + 1] = down_path[i];
        }
        res++;
    } else if(res == diagonal_len){
        for(int i = 0; i < diagonal_len; i++){
            result[i + 1] = diagonal_path[i];
        }     
        res++;
    } else if(res == right_len){
        for(int i = 0; i < right_len; i++){
            result[i + 1] = right_path[i];
        }     
        res++;
    } else{
        res = 0;
    }
    
    delete[] down_path;
    delete[] right_path;
    delete[] diagonal_path;
    return res;
}

int main(){
    int *result = new int[W + H - 1];
    int flag = shortest_path(INT_MIN, 0, 0, W - 1, H - 1, result);
    if(flag != 0){
        std::cout << "The number of steps is: " << flag << std::endl;
        std::cout << "[";
        for(int i = 0; i < flag - 1; i++){
            std::cout << result[i] << ", ";
        }
        std::cout << result[flag - 1] << ']' << std::endl;
    } else{
        std::cout << "There does not exist a path!" << std::endl;
    }
    delete[] result;
    return 0;
}
