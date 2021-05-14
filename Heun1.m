function [t,x] =Heun1(f,t0,tf,x0,h)
    t=t0:h:tf;
    n=length(t)-1;
    x=zeros(n+1,1); %reserva memoria para n elementos del vector x
    x(1)=x0;
    for i=1:n
        k1=h*f(t(i),x(i));
        k2=h*f(t(i)+h/3,x(i)+k1/3);
        k3=h*f(t(i)+2*h/3,x(i)+2*k2/3);
        x(i+1)=x(i)+(k1+3*k3)/4;
     end
end