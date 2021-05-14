close all; clear all; clc;
f =@(x) ((x)*exp(x))/(x+1)^2;
n=10;
a=0;
b=1;
TOL=10^-6;
TOL1=10^-6;
TOL2=10^-6;
M = Mittelpunktsregel(f,a,b,n)
[R,quad,err,h] = rombergBHO(f,a,b,n,TOL)
[R1,quad1,err1,h1] =rombergBHO(f,a,b,n,TOL1)
[R2,quad2,err2,h2] =rombergBHO(f,a,b,n,TOL2)
