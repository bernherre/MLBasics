                                              
close all; clear all; clc;
nexp= -23; %tau - das eps Kriterium
%a = 4;
a = 99;
%a = 999;
%a = 5345;
%a = 7123456;
%a = 0.0017;
   
[fwurzel,fzero,error] = wurzel(a,nexp);
[fg,fe] = wurzelBHO(a,nexp);

disp('solve'); disp(fwurzel);
disp('fzero'); disp(fzero);
disp('error'); disp(error);