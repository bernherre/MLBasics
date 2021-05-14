function [Q,R]=qrzer(A)
[n m]=size(A);
E=eye(n);
Q=eye(n);
B=A;
for i=1:n-1
 AA=tril(B);   
v = AA(:,i)+ norm(AA(:,i))*E(:,i);
H= E-(2/(v'*v))*(v*v');
B=H'*A;
Q=Q*H;
end
R=Q'*A;