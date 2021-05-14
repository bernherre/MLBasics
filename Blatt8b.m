close all; clear all; clc;
x0=input('Anfangsbedingung, x0: ');
v0=input('Anfangsbedingung erste Ableitung,dx/dt 0: ');
tf=input('Ende des Zeitsraum, tf: ');
h0=input('Schrittweiten, h0: ');
f=@(t,x,v) -10*sin(x); 
%Anfangsbedingungen
t0=0;
hold on
%Runge-Kutta-Verfahrung h0
[t3,x3,v3]=RK2(f,t0,tf,x0,v0,h0);

%Euler-Verfahrung h0
[t4,x4,v4]=Euler2(f,t0,tf,x0,v0,h0);

%Heun-Verfahrung h0
[t7,x7,v7]=Heun2(f,t0,tf,x0,v0,h0);

plot(x7,v7,'g')
plot(x4,v4,'r')
plot(x3,v3,'b')
grid on
xlabel('x')
ylabel('v');
legend('Runge-Kutta','Euler','Heun')
title('AWP-Verfaehrungen X gegen dx/dt')
hold off


