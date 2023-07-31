% Matrix concatenation
clear;clc;
A = [1 4;2 4;3 2];
B = [2 -4;1 3;7 9];
fprintf('Horizontal concatenation:\n');
C = [A,B]
fprintf('Vertical concatenation:\n');
D = [A;B]
%%
% Dimension of a matrix
clear;clc;
A = [2 1;4 3;2 1]
dim = size(A);
fprintf('Dimension of matrix A:\n');
disp(dim)