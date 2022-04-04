#include <iostream>
#include <cstdio>
#include "LinkedList.h"

using namespace std;

int main()
{
	freopen("main.inp", "r", stdin);
	freopen("main.out", "w", stdout);

	LinkedList<int> list;
	string cmd;
	while(cin >> cmd)
	{
		int pos, val, k;
		if(cmd == "Get"){
			cin >> pos;
			cout << list.Get(pos) << '\n';
		} else if(cmd == "AddAtHead"){
			cin >> val;
			list.AddAtHead(val);
		} else if(cmd == "AddAtIndex"){
			cin >> pos >> val;
			list.AddAtIndex(pos, val);
		} else if(cmd == "DeleteAtIndex"){
			cin >> pos;
			list.DeleteAtIndex(pos);
		} else if(cmd == "DeleteValue"){
			cin >> val;
			list.DeleteValue(val);
		} else if(cmd == "MoveToHead"){
			cin >> val;
			list.MoveToHead(val);
		} else if(cmd == "Rotate"){
			cin >> k;
			list.Rotate(k);
		} else if(cmd == "Reduce"){
			list.Reduce();
		} else if(cmd == "K_Reverse"){
			cin >> k;
			list.K_Reverse(k);
		} else if(cmd == "EvenOddSeparateSort"){
			list.EvenOddSeparateSort();
		} else if(cmd == "Size"){
			cout << list.Size() << '\n';
		} else if(cmd == "CleanUp"){
			list.CleanUp();
		} else{
			list.Print();
		}
	}

	return 0;
}