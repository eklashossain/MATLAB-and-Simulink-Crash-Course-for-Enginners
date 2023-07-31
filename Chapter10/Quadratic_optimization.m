% Quadratic programming optimization
% Objective function:
% min obj(x)=2*x(1)^2 + 3*x(2)^2 + 0.5*x(1)*x(2)- 4*x(1) + x(2);
% Limits: -1<=x(1)<= 5; 0<=x(2)<= 10; 
% Linear inequality constraint: x(1)+ x(2) <= 15;
% Linear inequality constraint: x(1)- 4*x(2) <= 8;
% Linear equality constraint: x(1)+ 2*x(2)= 4;
clc;clear;
H=[4 0.5;0.5 6];
F=[-4;1];
x_low=[-1,0];
x_up=[5,10];
A=[1 1;1 -4];
B=[15 8];
A_EQ=[1 2];
B_EQ=[4];
[x,value] = quadprog(H,F,A,B,A_EQ,B_EQ,x_low,x_up);
fprintf('Optimized value of the decision variable:\n');
fprintf('x1: %.5f\n',x(1));
fprintf('x2: %.5f\n',x(2));
fprintf('Minimized value of the objective function: %.5f\n',value);