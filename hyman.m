function [p,q] = hyman(H,lam)

n = max(size(H));



R = H(2:n,1:n-1) - lam*diag(ones(n-2,1),1);
h = H(1,1:n-1); h(1) = h(1) - lam;
k = H(2:n,n); k(n-1) = k(n-1) - lam;

%  Bestimme p(lam)

x = - R \ k;
p = H(1,n) + h*x;
%
%  Bestimme q(lam) = p'(lam)
%
y = R \ [x(2:n-1);1];
q = -x(1) + h*y;
