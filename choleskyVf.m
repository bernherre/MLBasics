function L = choleskyVf(A)
n=size(A,1);
L=zeros(n);
L(1,1)=sqrt(A(1,1));
for j=2:n
    for k=1:j-1
L(:,j)= A(:,j)- L(:,k)*L(j,k);
L(:,j)= L(:,j)/L(j,j);
    end
 for e=1:j-1   
L(j,j)= sqrt(A(j,j)-(L(j,e))^2);
 end
 end