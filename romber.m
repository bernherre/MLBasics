function [R,quad,err,h] = rombergBHO(f,a,b,n,toler)

m  = 1;
h  = b - a;
err = 1;
j = 0;
R = zeros(4,4);
R(1,1) = Mittelpunktsregel(f,a,b,1);%Mittelpunktsregel
while ((err>toler)&(j<n))|(j<4)%
  j = j+1;
  h = h/2;
  s = 0;
  for p = 1:m;
    x = a + h*(2*p-1);
    s = s + feval(f,x);
  end
  R(j+1,1) = R(j,1)/2 + h*s;
  m = 2*m;
  for k=1:j,
    R(j+1,k+1) = R(j+1,k) + (R(j+1,k)-R(j,k))/(4^k-1);
  end
  err = abs(R(j,j)-R(j+1,k+1));
end
quad = R(j+1,j+1);