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
       
  
	    if(b>a){
		   
	    	swap(a,b);
		}
		
	printf(a);
    return 0;   
}
