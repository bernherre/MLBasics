#include <iostream>
using namespace std;



int main()
{
  
    int a;
    int b;
    
    
    printf("Digite i: \n");
    scanf("%i",&a);
    printf("Digite j: \n");
    scanf("%i",&b);
 

	if(a>b)
	{
		   	   
	    	swap(a,b);
	    
	cout << a<< "-";	
	}
    return 0;   
}
void swap(int i, int j)
 {
    int t = i;
    i = j;
    j = t;
}
