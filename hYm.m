close all; clear all; clc;
B=[0,1,0,0,0;1,0,1,0,0;0,1,0,1,0;0,0,1,0,1;0,0,0,1,0];
sym x;
sym y;
I=eye(size(B,1));
H=@(x) B-x*I;
g=@(y) I(1,:)*y;
t=det(H(2));
sol=linsolve(H,g);