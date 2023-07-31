% One dimensional optimization
% Objective function: minimize obj(x)= 2*x + exp(x)
% Condition: -5<=x<=10
% Lower limit, x_low = -5;
% Upper limit, x_up = 10;
clc;clear;
syms x;
obj= @(x) 2*x + exp(x);
x_low=-5;
x_up=10;
[x,value]=fminbnd(obj,x_low,x_up);
fprintf('Optimized value of the decision variable: %.5f\n',x);
fprintf('Minimized value of the objective function: %.5f\n',value);

