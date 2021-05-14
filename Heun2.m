function [t,x,v] =Heun2(f,t0,tf,x0,v0,h)
      t=t0:h:tf;
      n=length(t)-1;
      x=zeros(n+1,1); % n+1 element(i) del vekt(i)or x(i)
      v=zeros(n+1,1);
      x(1)=x0; v(1)=v0;
      
      for i=1:n
        k1=h*v(i);
        l1=h*f(t(i),x(i),v(i));
        k2=h*(v(i)+l1/3);
        l2=h*f(t(i)+h/3,x(i)+k1/3,v(i)+l1/3);
        k3=h*(v(i)+2*l2/3);
        l3=h*f(t(i)+2*h/3,x(i)+2*k2/3,v(i)+2*l2/3);
        
        x(i+1)=x(i)+(k1+3*k3)/4;
        v(i+1)=v(i)+(l1+3*l3)/4;        
      end
end