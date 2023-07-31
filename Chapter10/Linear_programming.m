% Linear programming optimization
% Objective function:
% min obj(x)=2*x(1) + 3*x(2) + x(3);
% Limits: -1<=x(1)<= 5; 0<=x(2)<= 10; 0<=x(3)<= 15;
% Linear inequality constraint: x(1)+ x(2) + x(3) <= 15;
% Linear inequality constraint: x(1)- 4*x(2) + x(3) <= 8;
% Linear equality constraint: x(1)+ 2*x(3)= 4;
clc;clear;
obj=[2 3 1];
x_low=[-1,0,0];
x_up=[5,10,15];
A=[1 1 1;1 -4 1];
B=[15 8];
A_EQ=[1 0 2];
B_EQ=[4];
[x,value] = linprog(obj,A,B,A_EQ,B_EQ,x_low,x_up);
fprintf('Optimized value of the decision variable:\n');
fprintf('x1: %.5f\n',x(1));
fprintf('x2: %.5f\n',x(2));
fprintf('x3: %.5f\n\n',x(3));
fprintf('Minimized value of the objective function: %.5f\n',value);