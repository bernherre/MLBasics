#include <iostream>
using namespace std;

int contador(int num)
{
    int cont = 1;
    int data[];
    while(num != 1)
    {
        if (num % 2 == 0){
            num = num/2;
            }
        else{
            num = 3*num + 1;
            }
		data[cont]=num;
        cont++;
    }
    return cont;
}

int longitud(int a ,int b)
{
	
	
	
    int max=0,step; 
    
	
       	for(int i=a; i<=b; i++)
		{
        	if ((step = contador(i)) > max)
			{
           		 max = step-1;
        	}
    	}
	
    return max;
}


int main()
{
    
    int a;
    int b;
    
    
    printf("Digite i: \n");
    scanf("%i",&a);
    printf("Digite j: \n");
    scanf("%i",&b);
    printf("\n\n");
    printf("RESPUESTA: \n");
    
   		
 if (a>=b){
 		c=longitud(a,b);
        printf("%i\t%i\t%i\n", a,b,c);
        system("PAUSE");
        for( int i = 0; i < c; ++i ){
	
		printf( "%d\n", ar[ i ] );
	}
        }
    else{
        printf("%i\t%i\t%i\n", a,b,longitud(a,b));
        system("PAUSE");
        }
 
    return 0;   
}
void validar 
