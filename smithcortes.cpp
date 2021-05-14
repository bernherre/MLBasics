#include <stdio.h>
char tablero[][];
 float calcular(float corte1,float corte2,float porcent1,float porcent2 ){
       	
	   porcent3=100 - porcent2-porcent1; 
       
	   float c1 =porcent1/100;
       float c2 =porcent2/100;
       float c3=porcent3/100; 
       float cd1=3.00-(corte1*(c1)+corte2*(c2));
	    corte3 =(cd1)/(c3);
         printf("%f", corte3);
         printf("%f", c3);
         return corte3;
     }
int main() {

	    
        printf("Primera linea desde A1 ");
        scanf("%f",&corte1);
        printf("Primera linea desde B1 ");
        scanf("%f",&porcent1);
        printf("Primera linea desde C1 ");
        scanf("%f",&corte2);
        printf("Primera linea desde D1 ");
        scanf("%f",&porcent2);
        printf("Primera linea desde E1 ");
        scanf("%f",&corte1);
        printf("Primera linea desde F1 ");
        scanf("%f",&porcent1);
        printf("Primera linea desde G1 ");
        scanf("%f",&corte2);
        printf("Primera linea desde H1 ");
        scanf("%f",&porcent2);
        
     
      
       
    }
    return 0;
}
