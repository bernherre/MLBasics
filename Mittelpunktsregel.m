function M = Mittelpunktsregel(f,a,b,n)
%Intervale [a,b]
%n Schritt nummer
h=(b-a)/n;
y=zeros(0,n);
for i=1:n %jeden Punkt berechnen
    x=a+h/2:h:b;
  y(i)=f(x(i));
end
%summe
M = h*(sum(y));
  
     

