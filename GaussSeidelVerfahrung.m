function x = GaussSeidelVerfahrung(A,b,x0,s,f)

m=size(A,1);
L=tril(A,-1);
U=triu(A,1);
D=A-L-U;
T=-inv(L+D)*U;
g= inv(L+D)*b';
 z=x0';
    a=T*x0'+g;
    z=[z,a];   
for i=2:s
    
     h=T*z(:,i)+g;
    z=[z,h];
if max(z(:,i)-z(:,i-1))< 10^f && max(A*z(:,i)-b')<10^f
    break;
end
end
res=size(z,2);
x=z(:,res);