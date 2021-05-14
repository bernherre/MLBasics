close all; clear all; clc;
A=[1 0 0; 1 2 0;3 3 4];
b=[2 3 4];
Res = GestaffelteGS(A,b);
B=inv(A);
te=B*b';