% trapex.m test program for numerical integration using the composite
% trapezoidal rule to solve the integral of exp(-x^2) between
% a and b
clear; help trapex;
format long; % configures MATLAB to report numbers with more decimal places
a=input('input a (starting value)->');
b=input('input b (end value) ->');
n=input('input number of intervals (n) ->');
f=@(x) sqrt(1/2*pi)*exp(x);
h=(b-a)/n;
fa=f(a); % f(a)
fb=f(b); %f(b)
ff=0;
for i=2:n
 ff=ff+f((1/2)*(a+(h*(i-1)))); % sum of 2f(a + i(h)) where i = 1 to n-1
end
result=(h/6)*(fa+fb+4*ff)
% result = f(a) + f(b) + sum of 2f(a + i(h)) where i = 1 to n-1

