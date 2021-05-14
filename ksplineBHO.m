function X = ksplineBHO(ts)
%Baue die Kubic Spline

[n,m] = size(ts);   %Bestime Matrix
     
s=ts(:,1); %Bestime S
     
t=ts(:,2);%Bestime t
A = zeros(n,4);
for i=1:n
  
     A(i,:) = [t(i) t(i)^2 t(i)^3 1];
end    

 X = mldivide(A,s)
    