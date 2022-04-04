#include "Tree.h"

template <class keyT, class valT>
class AVLTree_t : public Tree_t<keyT, valT> {

    using PNode = Node_t<keyT, valT>*;
    using ParentCls = Tree_t<keyT, valT>;

    long check_bf(Node_t<keyT, valT>* n) {
        // Checks balance factor values in tree.
        long hr, hl, h;
        hr = hl = 0;
        if(!n) return 0;
        hr = check_bf(n->right);
        hl = check_bf(n->left);
        if(hr > hl) h = hr;
        else h = hl;
        h += 1;
        long bf = hl - hr;
        assert(bf == n->meta);
        assert(bf < 2);
        assert(bf > -2);
        return h;
    }

    // Move x up by rotating and update the balance factor
    void up_tree(PNode x){
        PNode y = x->parent;
        bool is_right_rotate = (y->left == x);
        ParentCls::rotate(y, is_right_rotate);
        if(is_right_rotate){
            y->meta -= max((short)0, x->meta) + 1;
            x->meta += min((short)0, y->meta) - 1;
        } else{
            y->meta -= min((short)0, x->meta) - 1;
            x->meta += max((short)0, y->meta) + 1;
        }
    }

    short abs(const short &x){
        return x > 0? x : -x;
    }

    short get_bf(PNode x){
        return abs(x->meta);
    }

    bool height_change(PNode x, short ins){
        return ins == 1? get_bf(x) != 0 : get_bf(x) == 0;
    }

    // Rotate to fix the balace factor
    PNode fix_bf(PNode x){
        PNode y, z;
        if(x->meta > 0){
            y = x->left;
            z = y->meta >= 0? y->left : y->right;
        } else{
            y = x->right;
            z = y->meta <= 0? y->right : y->left;
        }
        if((y == x->left) == (z == y->left)) return up_tree(y), y;
        else return up_tree(z), up_tree(z), z;
    }

    // Make tree balanced
    void balance(Node_t<keyT, valT>* x, short ins = 1) {
        PNode y = x->parent;
        while(y != NULL){
            if(y->left == x) y->meta += ins;
            else y->meta -= ins;
            if(get_bf(y) > 1) y = fix_bf(y);
            if(!height_change(y, ins)) break;
            x = y; y = x->parent;
        }
    }

    // Helper function for insert()
    Node_t<keyT, valT>* insert_internal(keyT key, valT value) {
        PNode inserted_node = ParentCls::insert_internal(key, value);
        if(inserted_node == ParentCls::root) return inserted_node;
        balance(inserted_node);
        return inserted_node;
    }

    // Helper function for remove()
    void remove_node(Node_t<keyT, valT>* p) {
        PNode child = p->left;
        if(child == NULL) child = p->right;
        balance(p, -1);
        ParentCls::SetLink(p->parent, child, p == p->parent->right);
        delete p;
    }

public:

    // Insert (key, value) pair
    void insert(keyT key, valT value) {
        if(!ParentCls::search(key).valid) insert_internal(key, value);
        else ParentCls::insert_internal(key, value);
    }

    // Remove key
    bool remove(keyT key) {
        if(ParentCls::root == NULL) return false;
        PNode deleted_node = ParentCls::search_subtree(ParentCls::root, key);
        if(deleted_node == NULL || deleted_node->key != key) return false;
        if(deleted_node == ParentCls::root && !(deleted_node->left != NULL && deleted_node->right != NULL)){
            if(deleted_node->left != NULL) ParentCls::root = deleted_node->left, deleted_node->left->parent = NULL;
            else if(deleted_node->right != NULL) ParentCls::root = deleted_node->right, deleted_node->right->parent = NULL;
            else ParentCls::root = NULL;
            delete deleted_node;
            return true;
        }
        if(deleted_node->left != NULL && deleted_node->right != NULL){
            PNode new_del_node = ParentCls::get_min(deleted_node->right);
            deleted_node->key = new_del_node->key;
            deleted_node->value = new_del_node->value;
            deleted_node = new_del_node;
        }
        return remove_node(deleted_node), true;
    }
};