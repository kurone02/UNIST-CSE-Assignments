#ifndef STACK_H
#define STACK_H

#include <iostream>

using namespace std;

template <typename type>
class Stack {

private:
  class Node{
  public:
    type data;
    Node *link;

    Node(){
      this->data = 0;
      this->link = NULL;
    }

    Node(type data, Node *link){
      this->data = data;
      this->link = link;
    }
  };

  Node *head;

public:
  // Constructor
  explicit Stack();

  // Destructor
  ~Stack();

  // Store new element
  void push(const type& item);

  // Return first element
  type& top() const;

  // Remove first element
  void pop();

  // Return true if empty, false otherwise
  bool empty() const;

  // Number of elements stored
  int size() const;
};

// Implement functions below

template <typename type>
Stack<type>::Stack() {
  head = NULL;
}

template <typename type>
Stack<type>::~Stack() {
  Node *current_node = head;
  while(current_node != NULL){
    Node *next_node = current_node->link;
    delete current_node;
    current_node = next_node;
  }
}

template <typename type>
void Stack<type>::push(const type &item) {
  Node *new_node = new Node(item, head);
  head = new_node;
}

template <typename type>
type& Stack<type>::top() const {
  return head->data;
}

template <typename type>
void Stack<type>::pop() {
  Node *next_node = head->link;
  delete head;
  head = next_node;
}

template <typename type>
bool Stack<type>::empty() const {
  return head == NULL;
}

template <typename type>
int Stack<type>::size() const {
  Node *current_node = head;
  int sz = 0;
  while(current_node != NULL){
    sz++;
    current_node = current_node->link;
  }
  return sz;
}

#endif //STACK_H
