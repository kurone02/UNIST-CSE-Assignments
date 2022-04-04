#include <iostream>
#include <map>

using namespace std;

template <typename Type>
class LinkedList
{
private:
	class Node
	{
	public:
		Type data;
		Node *link;

		Node()
		{
			data = 0;
			link = NULL;
		}
	};

	Node *head;

	// Returns the pointer that points to the node at index.
	Node* FindByIndex(const int index);

	// Returns the pointer that points to the first (or last) node having the value.
	Node* FindByValue(const int value);

	// Returns the pointer that points to the previous of the first node having the value.
	Node* PrevFindByValue(const int value);

	// Delete current pointer.
	void DeleteNode(Node *prev_node, Node *current_node);

// --------------------------------------------------------------

public:
	// Constructor
	LinkedList();

	// Destructor
	~LinkedList();

	// Get the value located at index
	Type Get(const int index);

	// Add val at head
	void AddAtHead(const Type& val);

	// Add val at index
	void AddAtIndex(const int index, const Type& val);

	// Delete an element located at index
	void DeleteAtIndex(const int index);

	// Delete val in linked list
	void DeleteValue(const Type& val);

	// Move the first element of val to head
	void MoveToHead(const Type& val);

	// Rotate the linked list right by steps times
	void Rotate(const int steps);

	// Reduce value that repeats multiple times
	void Reduce();

	// Reverse at every k number of nodes at a time
	void K_Reverse(const int k);

	// Sort even and odd numbers separately then append
	void EvenOddSeparateSort();

	// Return the number of elements in the linked list
	int Size();

	// Delete all elements from the linked list
	void CleanUp();
	
	// Print the list
	void Print();

};

/*
 *	Implementation
 */

template <typename Type>
LinkedList<Type>::LinkedList()
{
	head = NULL;
}

template <typename Type>
LinkedList<Type>::~LinkedList()
{
	Node *current = head;
	while(current != NULL)
	{
		Node *nxt = current->link;
		delete current;
		current = nxt;
	}
}

template <typename Type>
typename LinkedList<Type>::Node* LinkedList<Type>::FindByIndex(const int index)
{
	Node *current = head;
	int cnt = 0;
	while(current != NULL)
	{
		if(cnt == index) return current;
		current = current->link;
		cnt++;
	}
	return NULL;
}

template <typename Type>
typename LinkedList<Type>::Node* LinkedList<Type>::FindByValue(const int value)
{
	Node *current = head;
	Node *res = NULL;
	while(current != NULL)
	{
		if(current->data == value)
		{
			res = current;
			break;
		}
		current = current->link;
	}
	return res;
}

template <typename Type>
typename LinkedList<Type>::Node* LinkedList<Type>::PrevFindByValue(const int value)
{
	if(head != NULL && head->data == value) return NULL;
	Node *current = head;
	Node *res = NULL;
	while(current != NULL)
	{
		if(current->link != NULL && current->link->data == value)
		{
			res = current;
			break;
		}
		current = current->link;
	}
	return res;
}

template <typename Type>
void LinkedList<Type>::DeleteNode(Node* prev_node, Node* current_node)
{
	if(current_node == NULL) return;
	if(prev_node != NULL) prev_node->link = current_node->link;
	else head = current_node->link;
	delete current_node;
}

template <typename Type>
Type LinkedList<Type>::Get(const int index)
{
	Node *res = FindByIndex(index);
	if(res != NULL) return res->data;
	return -1;
}

template <typename Type>
void LinkedList<Type>::AddAtHead(const Type& val)
{
	Node *new_node = new Node;
	new_node->data = val;
	new_node->link = head;
	head = new_node;
}

template <typename Type>
void LinkedList<Type>::AddAtIndex(const int index, const Type& val)
{
	if(index == 0) AddAtHead(val);
	else
	{
		Node *prev_node = FindByIndex(index - 1);
		if(prev_node != NULL)
		{
			Node *new_node = new Node;
			new_node->data = val;
			new_node->link = prev_node->link;
			prev_node->link = new_node;
		}
	}
}

template <typename Type>
void LinkedList<Type>::DeleteAtIndex(const int index)
{
	Node *deleted_node = FindByIndex(index);
	Node *prev_node = FindByIndex(index - 1);
	if(deleted_node != NULL) DeleteNode(prev_node, deleted_node);
}

template <typename Type>
void LinkedList<Type>::DeleteValue(const Type& val)
{
	Node *deleted_node = FindByValue(val);
	Node *prev_node = PrevFindByValue(val);
	if(deleted_node != NULL) DeleteNode(prev_node, deleted_node);
}

template <typename Type>
void LinkedList<Type>::MoveToHead(const Type& val)
{
	Node *moved_node = FindByValue(val);
	if(moved_node != NULL)
	{
		DeleteValue(val);
		AddAtHead(val);
	}
}

template <typename Type>
void LinkedList<Type>::Rotate(const int steps)
{
	for(int k = 0; k < steps; k++)
	{
		Node *tail = FindByIndex(Size() - 1);
		Node *prev_tail = FindByIndex(Size() - 2);
		if(tail != NULL)
		{
			Type val = tail->data;
			DeleteNode(prev_tail, tail);
			AddAtHead(val);
		}
	}
}

template <typename Type>
void LinkedList<Type>::Reduce()
{
	Node *current = head;
	while(current != NULL)
	{
		Type reduced_val = current->data;
		Node *reduced_node = current->link;
		Node *prev_reduced_node = current;
		while(reduced_node != NULL)
		{
			Type val = reduced_node->data;
			Node *next_node = reduced_node->link;
			if(val == reduced_val) 
			{
				DeleteNode(prev_reduced_node, reduced_node);
				reduced_node = prev_reduced_node->link;
			} 
			else
			{
				prev_reduced_node = reduced_node;
				reduced_node = reduced_node->link;
			}
		}
		current = current->link;
	}
}

template <typename Type>
void LinkedList<Type>::K_Reverse(const int k)
{
	int n = Size();
	int nGroups = n / k;
	Node *prev_node, *current_node, *next_node;
	Node *prev_tail, *current_head, *current_tail;

	current_node = current_head = current_tail = head;
	prev_node = next_node = prev_tail = NULL;

	for(int i = 0; i / k < nGroups; i++)
	{
		if((i + 1) % k == 0)
		{
			if(prev_tail != NULL) prev_tail->link = current_head;
			if(i / k == 0) head = current_head;
			prev_tail = current_tail;
			current_tail = current_node->link;
		}

		next_node = current_node->link;
		current_node->link = prev_node;
		prev_node = current_node;
		current_head = current_node = next_node;
	}
	if(prev_tail != NULL) prev_tail->link = current_head;
}

template <typename Type>
void InsertionSort(const int &n, Type *a, const bool is_decreasing = true)
{
	for(int i = 0; i < n; i++)
	{
		Type inserted_val = a[i];
		int j = i - 1;
		for(; j >= 0; j--) 
		{
			if(is_decreasing)
			{
				if(a[j] > inserted_val) a[j + 1] = a[j];
				else break;
			}
			else
			{
				if(a[j] < inserted_val) a[j + 1] = a[j];
				else break;
			}
		}
		a[j + 1] = inserted_val;
	}
}

template <typename Type>
void LinkedList<Type>::EvenOddSeparateSort() 
{
	Node *current = head;
	int nEvens, nOdds; nEvens = nOdds = 0;
	while(current != NULL)
	{
		if(current->data % 2 == 0) nEvens++;
		else nOdds++;
		current = current->link;
	}

	Type *even = new Type[nEvens];
	Type *odd = new Type[nOdds];

	current = head;
	int cnt_even = 0, cnt_odd = 0;
	for(int i = 0; current != NULL; i++)
	{
		Type val = current->data;
		if(val % 2 == 0) even[cnt_even++] = val;
		else odd[cnt_odd++] = val;
		current = current->link;
	}

	InsertionSort(nEvens, even);
	InsertionSort(nOdds, odd, false);

	current = head;
	for(int i = 0; current != NULL; i++)
	{
		if(i < nEvens) current->data = even[i];
		else current->data = odd[i - nEvens];
		current = current->link;
	}	
}

template <typename Type>
int LinkedList<Type>::Size()
{
	Node *current = head;
	int size = 0;
	while(current != NULL) size++, current = current->link;
	return size;
}

template <typename Type>
void LinkedList<Type>::CleanUp()
{
	Node *current = head;
	while(current != NULL)
	{
		Node *nxt = current->link;
		delete current;
		current = nxt;
	}
	head = NULL;
}

template <typename Type>
void LinkedList<Type>::Print()
{
	cout << '(';
	Node *current = head;
	while(current != NULL)
	{
		cout << current->data;
		if(current->link != NULL) cout << ',';
		current = current->link;
	}
	cout << ')' << '\n';
}

map<string, int> f = {
	{"Get", 1},
	{"AddAtHead", 2},
	{"AddAtIndex", 3},
	{"DeleteAtIndex", 4},
	{"DeleteValue", 5},
	{"MoveToHead", 6},
	{"Rotate", 7},
	{"Reduce", 8},
	{"K_Reverse", 9},
	{"EvenOddSeparateSort", 10},
	{"Size", 11},
	{"CleanUp", 12},
	{"Print", 13}
};

int main()
{
	freopen("MAIN.INP", "r", stdin);
	freopen("MAIN.OUT", "w", stdout);

	LinkedList<int> list;
	string cmd;
	while(cin >> cmd)
	{
		switch(f[cmd])
		{
		case 1:
			int pos; cin >> pos;
			cout << list.Get(pos) << '\n';
			break;

		case 2:
			int val; cin >> val;
			list.AddAtHead(val);
			break;
		
		case 3:
			cin >> pos >> val;
			list.AddAtIndex(pos, val);
			break;
		
		case 4:
			cin >> pos;
			list.DeleteAtIndex(pos);
			break;

		case 5:
			cin >> val;
			list.DeleteValue(val);
			break;

		case 6:
			cin >> val;
			list.MoveToHead(val);
			break;
		
		case 7:
			int k; cin >> k;
			list.Rotate(k);
			break;
		
		case 8:
			list.Reduce();
			break;

		case 9:
			cin >> k;
			list.K_Reverse(k);
			break;

		case 10:
			list.EvenOddSeparateSort();
			break;
		
		case 11:
			cout << list.Size() << '\n';
			break;
		
		case 12:
			list.CleanUp();
			break;

		default:
			list.Print();
			break;   
		}
	}

	return 0;
}