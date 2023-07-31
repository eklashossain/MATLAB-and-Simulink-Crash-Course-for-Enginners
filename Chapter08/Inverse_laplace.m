% Inverse laplace transform
clc;clear;
syms t s
G=@(s) 6/((s-3)^2+36);
disp('Inverse laplace transform:')
g(t) = ilaplace(G(s))
%%
% Inverse laplace transform
clc;clear;
syms t s
G=@(s) (2*s^2+2*s+3)/(s^2+3*s+2);
disp('Inverse laplace transform:')
g(t) = ilaplace(G(s))
%%
clc;clear;
b = [2 2 3];
a = [1 3 2];
[r,p,k] = residue(b,a)
