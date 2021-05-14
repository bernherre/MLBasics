#include <iostream>
using namespace std;

void swap(int i, int j)
 {
    int t = i;
    i = j;
    j = t;
}

int main()
{
  
    int a;
    int b;
    
    
    printf("Digite i: \n");
    scanf("%i",&a);
    printf("Digite j: \n");
    scanf("%i",&b);
 

		   
	    	swap(a,b);
	    
	cout << a<< "-";	
    return 0;   
}
