close all; clear all; clc;

f=@(x) sqrt(1/2*pi)*exp(-0.5*x^2);
%a
rs=zeros(0,15);
for i=1:15
    rs(i) = zskeppler(f,0,1,2^i);
end
%b
g=@(x) x^2;
a0=1;
b0= 4;
n=3;
res = Mittelpunktsregel(g,a0,b0,n);
d=1:1:15;
plot(d,rs(d),'g')
