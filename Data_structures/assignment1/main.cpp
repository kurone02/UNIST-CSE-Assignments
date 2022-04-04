#include <iostream>
#include <map>
#include "LinkedList.h"

using namespace std;

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