#include <iostream>
#include<algorithm>
using namespace std;
int main ()
{
        int n , i , j;
        printf("Digite i: \n");
    	scanf("%i",&i);
    	printf("Digite j: \n");
    	scanf("%i",&j);
        while(cin>>i>>j)
        {
                int tempi = i;
                int tempj = j;
                if(i>j)
                        swap(i,j);
               
                int maxCycle_Length = INT_MIN;
                int cycle_Length;
                while(i<=j)
                {
                        n=i;
                        cycle_Length = 1;
                        while(n!=1){
                                if(n%2!=0)
                                        n=(3*n)+1;
                                else
                                        n = n/2;
                                cycle_Length++;
                        }
                        if(cycle_Length > maxCycle_Length)
                                maxCycle_Length = cycle_Length;
                        i++;
                }
                cout<<tempi<<" "<<tempj<<" "<<maxCycle_Length<<endl;
        }
       
        return 0;
}
