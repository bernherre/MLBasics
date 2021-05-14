#include <iostream>

#include <string>

int main() 
{
    int z=0;
	char ina[3];
    printf("sector\n");
    scanf("%s", &ina);

    
	for (int i=0;i<3;i++) 
		{
			char outa[3];
			outa[i] = ina[i];
			if (outa[i]=='k');
			{
			z=1;
			}
			if (ina[i]=='K');
			{
			z=11;
			}
			cout << outa[i] ;
		}	
		
	return 0;	
		
		
}
