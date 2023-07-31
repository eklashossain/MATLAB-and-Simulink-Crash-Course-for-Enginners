%% Partial fraction
% Fraction: (2s+3)/(s^2+2s)
% Highest degree of Numerator < Highest degree of denominator
clc;clear;
syms s
N = [2 3];
D = [1 2 0];
disp('The residuals:')
[r,p,k] = residue(N,D)
Expan=@(s) r(1)/(s-p(1)) + r(2)/(s-p(2));
disp('The partial fraction expansion:')
disp(Expan(s))
%% Partial fraction-2
% Fraction:(2s^2+4s+1)/(s^2+2s)
% Highest degree of Numerator = Highest degree of denominator
clc;clear;
syms s
N = [2 4 1];
D = [1 2 0];
disp('The residuals:')
[r,p,k] = residue(N,D)
Expansion=@(s) r(1)/(s-p(1)) + r(2)/(s-p(2)) + k;
disp('The partial fraction expansion:')
disp(Expansion(s))
%% Partial fraction-3
% Fraction:(2s^2+2s+1)/(2s^2+4s+3)
% Highest degree of Numerator = Highest degree of denominator
clc;clear;
syms s
N = [2 2 1];
D = [2 4 3];
disp('The residuals:')
[r,p,k] = residue(N,D)
Expansion=@(s) r(1)/(s-p(1)) + r(2)/(s-p(2)) + k;
disp('The partial fraction expansion:')
disp(Expansion(s))
%% Partial fraction-4
% Fraction: (2s^3+4s^2+3s+2)/(s^2+2s+1)
% Highest degree of Numerator > Highest degree of denominator
clc;clear;
syms s
N = [2 4 3 3];
D = [1 2 1];
disp('The residuals:')
[r,p,k] = residue(N,D)
Expansion=@(s) r(1)/(s-p(1)) + r(2)/(s-p(2)) + (s*k(1)+k(2));
disp('The partial fraction expansion:')
disp(Expansion(s))
