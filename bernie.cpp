#include <iostream>
#include <stdio.h>
#include <string>

int main ()
{
  
  string a[8];
  
  printf("Primera linea desde A1 ");
  scanf("%s",&a[1]);
  printf("Primera linea desde A1 ");
  scanf("%s",&a[2]);
  printf("Primera linea desde A1 ");
  scanf("%s",&a[3]);
  printf("Primera linea desde A1 ");
  scanf("%s",&a[4]);
  printf("Primera linea desde A1 ");
  scanf("%s",&a[5]);
  printf("Primera linea desde A1 ");
  scanf("%s",&a[6]);
  printf("Primera linea desde A1 ");
  scanf("%s",&a[7]);
  printf("Primera linea desde A1 ");
  scanf("%s",&a[8]);
cout << "The passwords are as follows:\n" << endl;
	
	for(int i = 0; i < (sizeof(a) / sizeof(a[0])); i++)
	{
		cout << "Password " << i+1 << ": " << a[i] << endl;
	}

	return 0;
}
  system("pause");
  return 0;
}
