clc; clear all;
% Two differential equation
% dy/dt = 4x^2-xy
% dx/dt = 2y-x^2
% Determine the equilibrium points of the system
% For determining equilibrium points consider, 
% dy/dt = 0 and dx/dt = 0
% The solutions x and y will be the equilibrium points of the system

clc; clear all;
syms x y
[solx,soly] = solve(4*x^2-x*y == 0, 2*y-x^2 == 0);
disp('Equilibrium points:')
E_point1=[solx(1) soly(1)]
E_point2=[solx(2) soly(2)]
