#include <iostream>
using namespace std;

void swap(int i, int j)
 {
    int t = i;
    i = j;
    j = t;
}

int contador(int num)
{
    int cont = 1;
    while(num != 1)
    {
        if (num % 2 == 0)
		{
            num = num /2;
    	}
        else
		{
            num = 3*num + 1;
       	}

        cont++;
    }
    return cont;
}

int longitud(int a ,int b)
{
    int step;
    int max=0;
    for(int i=a; i<=b; i++)
	{
        if ((step = contador(i)) > max)
		{
            max = step*2;
        }
    }
    return max;
}

int main()
{
    int max=0;
    int a;
    int b;
    int step;
    
    printf("Digite i: \n");
    scanf("%i",&a);
    printf("Digite j: \n");
    scanf("%i",&b);
    printf("\n\n");
    printf("RESPUESTA: \n");   
    //if (a>=1 && a>=1 && b<10^6 && a<10^6)
    //{
	    if(b>a){
		   
	    	swap(a,b);
		}
		while (a>=b)
			{
        printf("%i\t%i\t%i\n", a,b,longitud(a,b));
        system("PAUSE");
        	}
    	
    //}
    //else 
	//{
	    //printf("Intenta con otros digitos");
	    //break;
	//}

    return 0;   
}
