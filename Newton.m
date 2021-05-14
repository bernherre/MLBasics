function [q,k] = Newton(a,b,h)
k=1;
d= (b-a)/2 ;
x=zeros(1,30);
imax=10^4;
while k  < imax
    x(1) = d;
    x(k+1) = x(k)-(x(k)^2-h)/2*x(k);
   if(abs(x(k+1)-x(k))<=10^-4)
       break;
   end
     q = x(k+1);
     k=k+1;
end
 