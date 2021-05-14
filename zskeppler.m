function Y = zskeppler(f,a,b,n)
h=(b-a)/n;
fa=f(a); % f(a)
fb=f(b); %f(b)
ff=0;
for i=1:n
 ff=ff+f(a+h*i+4*f(a+i*h+(a+(h*(i+1))))/2); % sum of 2f(a + i(h)) where i = 1 to n-1
end
Y=(h/6)*(fa+fb+4*ff);
% result = f(a) + f(b) + sum of 2f(a + i(h)) where i = 1 to n-1
