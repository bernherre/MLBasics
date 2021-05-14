function [t,x] =RK1(f,t0,tf,x0,h)
  t=t0:h:tf;
      n=length(t)-1;
    x=zeros(n+1,1); %element del vektor x
    x(1)=x0;
    for i=1:n
        k1=h*f(t(i),x(i));
        k2=h*f(t(i)+h/2,x(i)+k1/2);
        k3=h*f(t(i)+h/2,x(i)+k2/2);
        k4=h*f(t(i)+h,x(i)+k3);
        x(i+1)=x(i)+(k1+2*k2+2*k3+k4)/6;
     end
end