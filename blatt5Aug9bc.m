                                              
close all; clear all; clc;
%ts=[1 2; 2 -2; 3 0; 4 2];
for i=1:6 
t(i)= -cos((i/m)*pi); 
ts=[ t(i),abs(t(i))]; 
end
   
dsol = ksplineBHO(ts);

disp('polynom'); disp(dsolve);
