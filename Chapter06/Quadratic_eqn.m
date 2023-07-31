% Solving quadratic equation
% 2x^2+4x+5=0
% Determine the values of x
clc;clear;
syms x
x_val=solve(2*x^2+4*x+5==0,x);
disp('The solutions are:');
disp(x_val);

%% Two quadratic equations
% 2x^2+4xy+5=0
% 3y^2+5xy-2=0
% Determine the values of x and y
clc;clear;
syms x y
[x_val,y_val]=solve(2*x^2+4*x*y+5==0,3*y^2+5*x*y-2==0);
disp('The solutions are:');
disp('x =');
disp(x_val);
disp('y =');
disp(y_val);

