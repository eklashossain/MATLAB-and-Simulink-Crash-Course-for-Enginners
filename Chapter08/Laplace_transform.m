% Laplace Transform
clc;clear;
syms t s
g=@(t) exp(3*t)*sin(6*t);
disp('Laplace transform:')
G(s)=laplace(g(t))

