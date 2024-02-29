/*
 * Author: Nguyen Minh Duc
 * Student_ID: 20202026
 * Email: ducnm@unist.ac.kr
 */

#ifndef GAME_TREE_GAME_TREE_SEARCH_H
#define GAME_TREE_GAME_TREE_SEARCH_H

#include <iostream>
#include <map>
#include <unordered_map>
#include <limits>
#include <memory>
#include <bitset>

#include "game_spec.h"
typedef std::vector<std::vector<int>> lists;
typedef std::pair<int, int> position;


#define INT_BIT_NUM 32
#define COMPLETE_BIT_MASK 0xffffffff

using bcode = uint32_t;
/**
 * bstate = [upper 32 bits save positions of X] [lower 32 buts save positions of O]
*/
using bstate = uint64_t;

const bcode bit_table[INT_BIT_NUM] = {
    0x00000001,
    0x00000002,
    0x00000004,
    0x00000008,
    0x00000010,
    0x00000020,
    0x00000040,
    0x00000080,
    0x00000100,
    0x00000200,
    0x00000400,
    0x00000800,
    0x00001000,
    0x00002000,
    0x00004000,
    0x00008000,
    0x00010000,
    0x00020000,
    0x00040000,
    0x00080000,
    0x00100000,
    0x00200000,
    0x00400000,
    0x00800000,
    0x01000000,
    0x02000000,
    0x04000000,
    0x08000000,
    0x10000000,
    0x20000000,
    0x40000000,
    0x80000000
};


// one_bit_flag should have exactly one 1-bit. This function returns the index of that 1-bit. Return -1 if all bits are zero.
inline int getBitId(bcode one_bit_flag) { return __builtin_ffs(one_bit_flag) - 1; }

//int getBitId(bcode bit) {    // an alternative implementation of getBitId()
//  int i = -1;
//  do {
//    bit >>= 1;
//    i++;
//  } while (bit != 0);
//  return i;
//}

inline bcode getLowerBitCode(bstate state) { return (COMPLETE_BIT_MASK & state); }

inline bcode getUpperBitCode(bstate state) { return (state >> INT_BIT_NUM); }

inline bstate calcBitState(bcode lower_bcode, bcode upper_bcode) {
  return static_cast<bstate>(lower_bcode) | (static_cast<bstate>(upper_bcode) << INT_BIT_NUM);
}

inline bool getBit(const bstate &x, const int &k) { return (x >> k) & 1; }
inline int setBit(bstate &x, const int &k) { return x | (1 << k); }
inline int offBit(bstate &x, const int &k) { return x & (~(1 << k)); }

inline bool getBit(const bcode &x, const int &k) { return (x >> k) & 1; }
inline int setBit(bcode &x, const int &k) { return x | (1 << k); }
inline int offBit(bcode &x, const int &k) { return x & (~(1 << k)); }



// -------------------------------------------------------------------------------------
// Compact Game Spec by Professor Tsz-Chiu Au
// -------------------------------------------------------------------------------------


class CompactGameSpec {

    int move_num;

    std::vector<int> original_move_to_compact_move;  // -1 if the original move is a block
    std::vector<int> compact_move_to_original_move;

    int ws_code_num;
    std::vector<bcode> ws_code;

    bcode terminal_mask;  // all compact move ids are 1

public:
    CompactGameSpec() {}
    explicit CompactGameSpec(const GameSpec& spec);

    int getNumOfMove() const { return move_num; }
    int convertFromOriginalToCompactMoveId(int i) const { return original_move_to_compact_move[i]; }
    int convertFromCompactToOriginalMoveId(int i) const { return compact_move_to_original_move[i]; }

    int getNumOfWinSeqCode() const { return ws_code_num; }
    bcode getWinSeqCode(int i) const { return ws_code[i]; }
    const std::vector<bcode>& getWinSeqCodes() const { return ws_code; }

    bcode getTerminalMask() const { return terminal_mask; }

};


class GameTree {

    static constexpr int INF = 1e9 + 7;

    static constexpr int EXACT = 0;
    static constexpr int LOWERBOUND = 1;
    static constexpr int UPPERBOUND = 2;

    static constexpr int DRAW = 0;
    static constexpr int O = 1;
    static constexpr int X = 2;
    static constexpr int ONGOING = -1;
    
    struct Transition {
        int flag, value;
    };

    struct GameNode {
        typedef std::shared_ptr<GameNode> Pointer;

        bstate state;
        std::vector<Pointer> children;
        bool isPruned;

        GameNode(bstate state=0, std::vector<Pointer> children={}): state(state), children(children), isPruned(true) {}
    };

    struct VisitNode {
        GameNode::Pointer state;
        int parent, id;
        std::vector<int> children;
    };

    CompactGameSpec spec;
    std::unordered_map<bstate, Transition> database;
    GameNode::Pointer root;


    int testTerminate(const bstate &node);

    int heuristic(const bstate &state);

    std::vector<bstate> generateMoves(const bstate &node, const int &current_player);

    int negamax(const bstate &node, int alpha, int beta, const int &current_player);

    int negamax_save_tree(const GameNode::Pointer &node, int alpha, int beta, const int &current_player);

    void printNode(const GameSpec &spec, const VisitNode &node);
    

public:

    GameTree() {}

    int computeGameTree(const GameSpec& spec);

    void printGameTree(const GameSpec& spec);

    void playAsFirstPlayer(const GameSpec& spec);

    void playAsSecondPlayer(const GameSpec& spec);

};


#endif //GAME_TREE_GAME_TREE_SEARCH_H
