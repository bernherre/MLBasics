close all; clear all; clc;
x0=input('Anfangsbedingung, x0: ');
v0=input('Anfangsbedingung,v0: ');
tf=input('Ende des Zeitsraum, tf: ');
h0=0.5;
h1=0.1;
h2=0.01;
f=@(t,x,v) -10*sin(x); 
%Anfangsbedingungen
t0=0;
hold on
%Runge-Kutta-Verfahrung h0
[t3,x3,v3]=RKVBHO(f,t0,tf,x0,v0,h0);
%Runge-Kutta-Verfahrung h0
[t1,x1,v1]=RKVBHO(f,t0,tf,x0,v0,h1);
%Runge-Kutta-Verfahrung h0
[t2,x2,v2]=RKVBHO(f,t0,tf,x0,v0,h2);
plot(x3,v3,'b')
plot(x1,v1,'r')
plot(x2,v2,'g')
grid on
xlabel('t')
ylabel('x');
legend('h=0.5','h=0.1','h=0.01')
title('Runge-Kutte-Verfahrung X gegen T')
hold off


