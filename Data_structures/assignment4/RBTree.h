#include "Tree.h"

#define BLACK 0
#define RED 1

template <class keyT, class valT>
class RBTree_t : public Tree_t<keyT, valT> {

    using PNode = Node_t<keyT, valT>*;
    using ParentCls = Tree_t<keyT, valT>;

    size_t check_rb(Node_t<keyT, valT>* n) {
        // Checks RB tree property
        size_t b, br, bl;
        br = bl = b = 1;
        assert(n);
        if(n && n->right) {
            br = check_rb(n->right);
            assert(n->meta == BLACK || n->right->meta == BLACK);
        }
        if(n && n->left) {
            bl = check_rb(n->left);
            assert(n->meta == BLACK || n->left->meta == BLACK);
        }
        b = br;
        if(n == this->root && br != bl) {
            //dump_subtree(this->root);
        }
        assert(n != this->root || br == bl);
        b = br;
        if(n->meta == BLACK) b += 1;
        if(n == this->root) assert(n->meta == BLACK);

        return b;
    }

    // Get a sibling of x
    PNode sibling(PNode x){
        if(x == NULL) return NULL;
        PNode y = x->parent;
        if(y == NULL) return NULL;
        return y->left == x? y->right : y->left;
    }

    // Move x up by rotating
    void up_tree(PNode x){
        PNode y = x->parent;
        ParentCls::rotate(y, y->left == x);
    }

    void flip_color(PNode x){
        x->meta = 1 - x->meta;
    }

    short get_color(PNode x){
        if(x == NULL) return BLACK;
        return x->meta;
    }

    bool is_black(PNode x){
        return get_color(x) == BLACK;
    }

    bool is_red(PNode x){
        return get_color(x) == RED;
    }

    // Flip colors after inserting
    void insert_fix_up(PNode p){
        if(p == ParentCls::root){
            p->meta = BLACK;
            return;
        }
        PNode pp = p->parent;
        if(is_black(pp)) return;
        PNode gp = pp->parent;
        if(gp == NULL) return;
        PNode d = sibling(pp);
        if(get_color(d) == RED){ // XYr
            flip_color(pp); flip_color(gp); flip_color(d);
            insert_fix_up(gp);
        } else if((get_color(d) == BLACK) && ((pp == gp->left) == (p == pp->left))){ // LLb RRb
            up_tree(pp);
            flip_color(pp); flip_color(gp);
        } else if((get_color(d) == BLACK) && ((pp == gp->left) != (p == pp->left))){ // LRb RLb
            up_tree(p); up_tree(p);
            flip_color(p); flip_color(gp);
        }
    }

    // Helper function for remove()
    void remove_node(Node_t<keyT, valT>* p) {
        PNode child = p->left;
        if(child == NULL) child = p->right;
        if(is_red(p)){
            ParentCls::SetLink(p->parent, child, p == p->parent->right);
            delete p;
        } else if(is_red(child)){
            ParentCls::SetLink(p->parent, child, p == p->parent->right);
            flip_color(child);
            delete p;
        } else{
            PNode x = child, y = p->parent;
            PNode v = sibling(p);
            // Double black pointers
            ParentCls::SetLink(p->parent, child, p == p->parent->right);
            delete p;
            // Case 0
            // cout << "WUT0\n";
            while(is_black(y) && is_black(v) && is_black(v->left) && is_black(v->right)){
                cout << "while0\n";
                flip_color(v);
                x = y; y = y->parent;
                v = sibling(x);
            }
            // Case 1
            // cout << "WUT1\n";
            if(is_black(y) && is_red(v)){
                up_tree(v);
                swap(y->meta, v->meta);
                // Case 2
                // cout << "WUT2\n";
                if(x != NULL) v = sibling(x);
                else if(y->left != NULL) v = y->left;
                else v = y->right;
                if(is_black(v) && is_black(v->left) && is_black(v->right)){
                    flip_color(v); flip_color(y);
                    return;
                }
            }
            // Case 3
            // cout << "WUT3\n";
            // cout << y->key << ' ' << v << ' ' << x << '\n';
            if(is_black(v) && is_black(v->right) && is_red(v->left)){
                PNode z = v->left;
                swap(v->meta, z->meta);
                up_tree(z);
                v = z;
            }
            // Case 4
            // cout << "WUT4\n";
            if(is_black(v) && is_red(v->right)){
                swap(v->meta, y->meta);
                up_tree(v);
                v->right->meta = BLACK;
            }
        }
    }


public:

    // Insert (key, value) pair
    void insert(keyT key, valT value) {
        PNode inserted_node;
        if(ParentCls::search(key).valid){
            ParentCls::insert_internal(key, value);
            // cout << ParentCls::to_string_level_order() << '\n';
            return;
        }
        inserted_node = ParentCls::insert_internal(key, value, RED);
        if(inserted_node->parent != NULL) cout << "DEBUG: " << inserted_node->key << ' ' << inserted_node->parent->key << '\n';
        if(inserted_node == ParentCls::root) inserted_node->meta = BLACK;
        else insert_fix_up(inserted_node);
        // cout << ParentCls::to_string_level_order() << '\n';
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
            // cout << ParentCls::to_string_level_order() << '\n';
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
