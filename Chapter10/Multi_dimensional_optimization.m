% Multidimensional optimization
% Objective function:
% min obj(x)=x(1)^2 + 2*x(1)*x(2) + x(3)^2 + exp(x(2));
% Limits: -1<=x(1)<= 5; 0<=x(2)<= 5; 0<=x(3)<= 7;
% Linear inequality constraint: x(1)+ x(2) + x(3) < 10;
% Linear equality constraint: x(1)+ 2*x(3)= 4;
% Non-linear equality constraint: x(1)^2 + x(2)^2 + x(3)^2 = 12;
% Non-linear inequality constraint: x(1)*x(2) + x(2)*x(3) <= 30;
% Initial values: xo= [-1,0,0];
clc;clear;
obj=@(x) x(1)^2 + 2*x(1)*x(2) + x(3)^2 + exp(x(2));
x_low=[-1,0,0];
x_up=[5,5,7];
xo=[-1,0,0];
A=[1,1,1];
B=[10];
A_EQ=[1,0,2];
B_EQ=[4];
nonLinearConstraint= @nonlinear_constraint;
[x,value] = fmincon(obj,xo,A,B,A_EQ,B_EQ,x_low,x_up,nonLinearConstraint);
fprintf('Optimized value of the decision variable:\n');
fprintf('x1: %.5f\n',x(1));
fprintf('x2: %.5f\n',x(2));
fprintf('x3: %.5f\n\n',x(3));
fprintf('Minimized value of the objective function: %.5f\n',value);