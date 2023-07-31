% Integral equation
% Integration[2*x^2].dx - 3x = 0
% Without limit
clc;clear;
syms x 
I1=int(2*x^2,x);
disp('The solution without limit:')
x_sol=solve(I1-3*x==0,x)
% With limit of [0 2]
I2=int(2*x^2,x,0,2);
disp('The solution with limit:')
x_sol=solve(I2-3*x==0,x)