function [t,x] =euler1(f,t0,tf,x0,h)
    t=t0:h:tf;
      n=length(t)-1;
      x=zeros(n+1,1); %reserva memoria para n+1 elementos del vector x
      x(1)=x0;
      for i=1:n
          x(i+1)=x(i)+f(t(i),x(i))*h;
      end
end