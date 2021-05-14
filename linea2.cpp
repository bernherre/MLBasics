#include <cstdlib>
#include <iostream>
#include <stdio.h>
#include <string>

using namespace std;

int main(int argc, char *argv[])
{

char str[20];
cout<<"ingrese nombre\n";
cin>>str;
char * pch;

pch = strtok (str, delims);
while (pch != NULL)
{
printf ("%s\n",pch);
pch = strtok (NULL, delims);

} 

system("PAUSE>nul");
return 0;
}
