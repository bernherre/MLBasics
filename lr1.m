function [L,R] = LR1(A)
[n,n] = size(A);
for k=1:n-1
A(k+1:n,k) = A(k+1:n,k)/A(k,k);
A(k+1:n,k+1:n) = A(k+1:n,k+1:n)-A(k+1:n,k)*A(k,k+1:n);
end
R = triu(A); 
L = eye(n,n) + tril(A,-1);