%% Differential equation solve using Laplace transform
% 3*y'''(t) + 2*y''(t) + 3y(t) = 1
% Initial condition: y(0)=0;y'(0)=0;y''(0)=1;
clc;clear;
syms s Y
% Initial conditions
y0=0;dy0=0;dy20=1;
Y1=@(s) s*Y-y0;
Y2=@(s) s^2*Y-s*y0-dy0;
Y3=@(s) s^3*Y-s^2*y0-s*dy0-dy20;
% Differential equation
eqn=3*Y3(s)+2*Y2(s)+3*Y-laplace(1,s);
solve(eqn,Y)