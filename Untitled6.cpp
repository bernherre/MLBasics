#include <stdio.h>
#include <iostream>

using namespace std;

//char* b[6] = new char[6];

char a[6] = {'b','c','d','e','f','g'};
char c[6] = {'a','b','d','d','f','g'};

int main()
{
    char d[][6]={*a,*c};



    for (int x = 0 ; x < 1; x++)
    {
        for(int y = 0; y<6; y++)
        {
            char test = d[x][y];
            cout << test <<"\n";
        }
    }
    printf("You entered %s, %s", d[2],d[3]);
    return 0;
}
