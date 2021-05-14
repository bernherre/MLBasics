function [t,x,v] =RK2(f,t0,tf,x0,v0,h)
      t=t0:h:tf;
      n=length(t)-1;
      x=zeros(n+1,1); % n+1 element(i) del vekt(i)or x(i)
      v=zeros(n+1,1);
      x(1)=x0; v(1)=v0;
      
      for i=1:n
        k1=h*v(i);
        l1=h*f(t(i),x(i),v(i));
               
        x(i+1)=x(i)+(k1);
        v(i+1)=v(i)+(l1);        
      end
end