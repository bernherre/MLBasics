#include <iostream>

#include <string>
char separar(char a)
{
	for (int i=0;i<9;i++) 
		{
		out[i] = in[i];
		}	
		return out[i];
}

int main() 
{
		char correcto;
		char ia[9];
		char ib[9];
		char ic[9];
		char id[9];
		char ie[9];
		char iff[9];
		char ig[9];
		char ih[9];
		printf("\nLinea A: ");
		scanf("%s", &ia);
		printf("\nLinea B: ");
		scanf("%s", &ib);
		printf("\nLinea C: ");
		scanf("%s", &ic);
		printf("\nLinea D: ");
		scanf("%s", &id);
		printf("\nLinea E: ");
		scanf("%s", &ie);
		printf("\nLinea F: ");
		scanf("%s", &iff);
		printf("\nLinea G: ");
		scanf("%s", &ig);
		printf("\nLinea H: ");
		scanf("%s", &ih);
		
		printf("Su tablero es\n %s\n %s\n %s\n %s\n %s\n %s\n %s\n %s: ",ih, ig, iff, ie, id, ic, ib, ia);
		printf("\nEs Correcto ? s,n ");
		scanf("%s", &correcto);
		if(correcto='n')
		{
			printf("\nEs una Weva\n ");
		 system("pause");
			
		}
		else
		{
			printf("\nContinuar ");
		}
		return 0;
		
	
}
