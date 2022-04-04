#ifndef QUEUE_H
#define QUEUE_H

#include <iostream>

using namespace std;

template <typename type>
class Queue {

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

  Node *head, *tail;

public:
  // Constructor
  explicit Queue();

  // Destructor
  ~Queue();

  // Store new element
  void push(const type& item);

  // Return first element
  type& front() const;

  // Remove first element
  void pop();

  // Return true if empty, false otherwise
  bool empty() const;

  // Number of elements stored
  int size() const;

};

// Implement functions below

template <typename type>
Queue<type>::Queue() {
  head = tail = NULL;
}

template <typename type>
Queue<type>::~Queue() {
  Node *current_node = head;
  while(current_node != NULL){
    Node *next_node = current_node->link;
    delete current_node;
    current_node = next_node;
  }
}


template <typename type>
void Queue<type>::push(const type &item) {
  Node *new_node = new Node(item, NULL);
  // If queue is empty
  if(tail == NULL) head = tail = new_node;
  else{
    tail->link = new_node;
    tail = new_node;
  }
}

template <typename type>
type& Queue<type>::front() const {
  return head->data;
}

template <typename type>
void Queue<type>::pop() {
  Node *popped_node = head;
  head = head->link;
  // If queue is empty after pop
  if(head == NULL) tail = NULL;
  delete popped_node;
}

template <typename type>
bool Queue<type>::empty() const {
  return head == NULL && tail == NULL;
}

template <typename type>
int Queue<type>::size() const {
  Node *current_node = head;
  int sz = 0;
  while(current_node != NULL){
    sz++;
    current_node = current_node->link;
  }
  return sz;
}

#endif //QUEUE_H
