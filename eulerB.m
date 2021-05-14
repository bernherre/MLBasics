tf=input('tiempo final, tf: ');
n=input('número de pasos, n: ');
f=@(t,x) cos(t); 
%condiciones iniciales
t0=0; 
x0=0;
[t,x]=eulerBHO(f,t0,tf,x0,n); 

hold on
plot(t,x,'b')
y=sin(t);
plot(t,y,'r')
xlabel('t')
ylabel('x');
legend('aproximada','exacta')
title('dx/dt=cost')
hold off