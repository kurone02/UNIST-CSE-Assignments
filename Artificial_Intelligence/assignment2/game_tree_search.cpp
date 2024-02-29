/*
 * Author: Nguyen Minh Duc
 * Student_ID: 20202026
 * Email: ducnm@unist.ac.kr
 */

#include <iostream>
#include <queue>
#include <string>
#include <algorithm>
#include <cassert>

#include <bitset>

#include "game_spec.h"
#include "game_tree_search.h"

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~CompactGameSpec Implementation~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/**
 * Public methods
*/

CompactGameSpec::CompactGameSpec(const GameSpec& spec) :
  original_move_to_compact_move(spec.getSize()),
  compact_move_to_original_move(spec.getSize()),
  ws_code_num(spec.getNumOfWinSeq()),
  ws_code(spec.getNumOfWinSeq())
{
  move_num=0;

  for(int i=0; i<spec.getSize(); i++) {
    if (!spec.isBlocked(i)) {
      original_move_to_compact_move[i] = move_num;
      compact_move_to_original_move[move_num] = i;
      move_num++;
    } else {
      original_move_to_compact_move[i] = -1;
    }
  }

  if (move_num > INT_BIT_NUM) throw std::runtime_error("Error: the number of possible moves is too large.");

  for(int i=0; i<ws_code_num; i++) {
    ws_code[i] = 0;
    for(auto orig_move : spec.getWinSeq()[i]) {
      ws_code[i] |= bit_table[original_move_to_compact_move[orig_move]];
    }
  }

  terminal_mask = 0;
  for(int i=0; i < move_num; i++) {
    terminal_mask |= bit_table[i];
  }

  assert(move_num == __builtin_popcount(terminal_mask));
}



// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~GameTree Implementation~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/**
 * Private methods
*/


int GameTree::testTerminate(const bstate &node) {
    std::vector<bcode> ws_code = spec.getWinSeqCodes();
    bcode O_pos = getLowerBitCode(node);
    bcode X_pos = getUpperBitCode(node);
    for(auto win_code: ws_code) {
        if((O_pos & win_code) == win_code) return O;
        if((X_pos & win_code) == win_code) return X;
    }
    
    if((O_pos | X_pos) == spec.getTerminalMask()) return DRAW;
    return ONGOING;
}


int GameTree::heuristic(const bstate &state) {
    std::vector<bcode> ws_code = spec.getWinSeqCodes();
    int n_O_wins = 0, n_X_wins = 0;
    int can_O_win = 0, can_X_win = 0;
    for(auto win_code: ws_code) {
        bcode O_state = (state & win_code);
        bcode X_state = ((state >> INT_BIT_NUM) & win_code);
        can_O_win += (X_state != win_code);
        can_X_win += (O_state != win_code);
        n_O_wins += (X_state == 0);
        n_X_wins += (O_state == 0);
    }
    return (n_O_wins + 100 * can_O_win) - (n_X_wins + 100 * can_X_win);
}


std::vector<bstate> GameTree::generateMoves(const bstate &node, const int &current_player) {
    std::vector<bstate> legal_moves;
    bcode O_pos = getLowerBitCode(node);
    bcode X_pos = getUpperBitCode(node);
    bcode OX_union = O_pos | X_pos;
    for(int i = 0; i < spec.getNumOfMove(); i++) {
        if(getBit(OX_union, i) == 0) {
            switch(current_player) {
                case 1: // O
                    legal_moves.push_back((static_cast<bstate>(X_pos) << INT_BIT_NUM) | setBit(O_pos, i));
                    break;
                case -1: // X
                    legal_moves.push_back((static_cast<bstate>(setBit(X_pos, i)) << INT_BIT_NUM) | O_pos);
                    break;
            }
        }
    }

    std::sort(legal_moves.begin(), legal_moves.end(), [&](const bstate &lhs, const bstate &rhs) {
        if(current_player == 1) return heuristic(lhs) > heuristic(rhs);
        return heuristic(lhs) < heuristic(rhs);
    });

    // for(auto x: legal_moves) {
    //     std::cout << '(' << x << ',' << heuristic(x) << ')' << ' ';
    // }
    // std::cout << '\n';

    return legal_moves;
}


int GameTree::negamax(const bstate &node, int alpha, int beta, const int &current_player) {
    // std::cout << node << ' ' << alpha << ' ' << beta << ' ' << current_player << '\n';
    int alpha_orig = alpha;
    auto lookup = database.find(node);
    if(lookup != database.end()) {
        Transition entry = lookup->second;
        switch(entry.flag) {
            case EXACT:
                return entry.value;
            case LOWERBOUND:
                alpha = std::max(alpha, entry.value);
                break;
            case UPPERBOUND:
                beta = std::min(beta, entry.value);
                break;
        }
        if(alpha >= beta) {
            return entry.value;
        }
    }

    switch(testTerminate(node)) {
        case O:
            return current_player;
        case X:
            return -current_player;
        case DRAW:
            return 0;
    }

    std::vector<bstate> childNodes = generateMoves(node, current_player);
    int value = -INF;
    for(bstate child: childNodes) {
        value = std::max(value, -negamax(child, -beta, -alpha, -current_player));
        alpha = std::max(alpha, value);
        if(alpha >= beta) {
            break;
        }
    }

    Transition& entry = database[node];
    entry.value = value;
    if(value <= alpha_orig) {
        entry.flag = UPPERBOUND;
    } else if(value >= beta) {
        entry.flag = LOWERBOUND;
    } else {
        entry.flag = EXACT;
    }

    return value;
}


int GameTree::negamax_save_tree(const GameNode::Pointer &node, int alpha, int beta, const int &current_player) {
    // std::cout << node->state << ' ' << alpha << ' ' << beta << ' ' << current_player << '\n';
    int alpha_orig = alpha;
    auto lookup = database.find(node->state);
    if(lookup != database.end()) {
        Transition entry = lookup->second;
        switch(entry.flag) {
            case EXACT:
                node->isPruned = true;
                node->children.clear();
                return entry.value;
            case LOWERBOUND:
                alpha = std::max(alpha, entry.value);
                break;
            case UPPERBOUND:
                beta = std::min(beta, entry.value);
                break;
        }
        if(alpha >= beta) {
            return entry.value;
        }
    }

    switch(testTerminate(node->state)) {
        case O:
            return current_player;
        case X:
            return -current_player;
        case DRAW:
            return 0;
    }

    std::vector<bstate> childNodes = generateMoves(node->state, current_player);
    for(bstate child: childNodes) {
        node->children.push_back(GameNode::Pointer(new GameNode(child)));
    }

    int value = -INF;
    for(auto &child: node->children) {
        value = std::max(value, -negamax_save_tree(child, -beta, -alpha, -current_player));
        alpha = std::max(alpha, value);
        if(alpha >= beta) {
            break;
        }
        child->isPruned = false;
    }

    Transition& entry = database[node->state];
    entry.value = value;
    if(value <= alpha_orig) {
        entry.flag = UPPERBOUND;
    } else if(value >= beta) {
        entry.flag = LOWERBOUND;
    } else {
        entry.flag = EXACT;
    }

    return value;
}


void GameTree::printNode(const GameSpec &spec, const VisitNode &node) {
    for(int x = 0; x < spec.getSizeX(); x++) std::cout << '-'; 
    std::cout << ' ';

    std::cout << 's' << node.id << ' ';

    if(node.parent == -1) {
        std::cout << "parent=nil ";
    } else {
        std::cout << "parent=s" << node.parent << ' ';
    }
    
    if(node.state->isPruned) {
        std::cout << "pruned\n";
    } else if(node.children.empty()) {
        int result = database[node.state->state].value;
        if(result == 0) std::cout << "DRAW ";
        else if(result == 1) std::cout << "WIN ";
        else std::cout << "LOSE ";
        std::cout << "payoff=" << result << '\n';
    } else {
        std::cout << "children={ ";
        for(auto child: node.children) {
            std::cout << 's' << child << ' ';
        }
        std::cout << "} payoff=" << database[node.state->state].value << '\n';
    }

    bcode pos1 = getLowerBitCode(node.state->state);
    bcode pos2 = getUpperBitCode(node.state->state);
    for (int y = 0; y < spec.getSizeY(); y++) {
        for (int x = 0; x < spec.getSizeX(); x++) {
            int move_id = spec.getMoveId(x, y);
            int compact_move_id = this->spec.convertFromOriginalToCompactMoveId(move_id);
            if (compact_move_id >= 0) {
                if ((pos1 & bit_table[compact_move_id]) != 0) {
                    std::cout << "O";
                } else if ((pos2 & bit_table[compact_move_id]) != 0) {
                    std::cout << "X";
                } else {
                    std::cout << ".";
                }
            } else {
                    std::cout << "#";
            }
        }
        std::cout << std::endl;
    }
}




/**
 * Public methods
*/


int GameTree::computeGameTree(const GameSpec& spec) {
    int alpha = -INF, beta = INF;
    this->spec = CompactGameSpec(spec);
    return negamax(0, alpha, beta, 1);
}


void GameTree::printGameTree(const GameSpec& spec) {
    root = GameNode::Pointer(new GameNode());
    root->isPruned = false;
    this->spec = CompactGameSpec(spec);
    negamax_save_tree(root, -INF, INF, 1);
    std::queue<VisitNode> q;
    int nNodes = 0;
    q.push({root, -1, nNodes, {}});

    while(!q.empty()) {
        VisitNode current = q.front();
        q.pop();
        for(auto child: current.state->children) {
            nNodes++;
            current.children.push_back(nNodes);
            q.push({child, current.id, nNodes, {}});
        }

        printNode(spec, current);

    }
}


void GameTree::playAsFirstPlayer(const GameSpec& spec) {

}


void GameTree::playAsSecondPlayer(const GameSpec& spec) {

}

