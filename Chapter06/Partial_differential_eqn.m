% Partial differential equation
% del(F)/del(x) - x^2 = 0 
% Here, F = 2*x^2+y-5
% Solve the partial differential equation for x
clc;clear;
syms x y
F=2*x^2+y-5;
P_diff=diff(F,x);
disp('Solution:')
Sol_x=solve(P_diff-x^2==0,x)
