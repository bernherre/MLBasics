#include <iostream>
#include <string>

using namespace std;

int main()
{
	string Passwords[5] = { "password", "abc123", "root", "admin", "awesome" };
	cout << "The passwords are as follows:\n" << endl;
	
	for(int i = 0; i < (sizeof(Passwords) / sizeof(Passwords[0])); i++)
	{
		cout << "Password " << i+1 << ": " << Passwords[i] << endl;
	}

	return 0;
}
