#include <iostream>
#include <cstring>

using namespace std;

char sum_digits(char *s) {
	/* write this function!! */
	// Empty string
	if(strlen(s) == 0) return '0';

	// Only has 1 digit
	if(strlen(s) == 1) return s[0];

	// The first digit is 0
	if(s[0] == '0') return sum_digits(s + 1);

	// Otherwise
	int first_digit = s[0] - '0';
	int second_digit = s[1] - '0';
	int sum = first_digit + second_digit;
	if(sum < 10){ // The sum < 0: put 0 in the first digit
		s[0] = '0';
		s[1] = sum + '0';
	} else{
		s[0] = sum / 10 + '0';
		s[1] = sum % 10 + '0';
	}
	return sum_digits(s);
}

int main() {
#define TEST(x, v)	{ char array[] = x; if (sum_digits(array) == v) cout << "line " << __LINE__ << " (" << x << ") was correct!! (" << v << ")" << endl; else cerr << "line " << __LINE__ << " (" << x << ") IS INCORRECT!!! Expected " << v << ", but got " << sum_digits(array) << " (" << (int)sum_digits(array) << ")" << endl; }
	TEST("0", '0');
	TEST("1", '1');
	TEST("2", '2');
	TEST("3", '3');
	TEST("10", '1');
	TEST("01", '1');
	TEST("18", '9');
	TEST("19", '1');
	TEST("47", '2');
	TEST("99", '9');
	TEST("100", '1');
	TEST("101", '2');
	TEST("110", '2');
	TEST("111", '3');
	TEST("1293847912874918237491823749812374", '5');
	TEST("3298723876123476129847912837487132648761238741", '5');
	TEST("1213262531023492384283400", '6');
	TEST("99999999999999999999999999999999999999999999999999999999999999999999999", '9');
	return 0;
}
