close all; clear all; clc;

m=input('Konstante m, m: ');
rtol=input('eps, rtol: ');

f=@(t,x) 9.81- (k(t)/m)*x^2; 
%Anfangsbedingungen
h=1/8;
x0=0;
t0=0;
tf=10;
hold on
%Runge-Kutta-Verfahrung h0
[t3,x3]=RK1(f,t0,tf,x0,h);

[x2,t2]=rkf45(f,t0,tf,x0,h,rtol);

options = odeset('RelTol',1e-4,'AbsTol',[1e-4]);
[T,Y] = ode45(f,[t0 tf],0,options);

plot(x3,t3,'b')
plot(x2,t2,'r')
plot(Y,T,'g')
grid on
xlabel('x')
ylabel('v');
legend('Runge-Kutta-Normal','Runge-Kutta-Stiff','ode45')
title('AWP-Verfaehrungen X gegen t')
hold off


