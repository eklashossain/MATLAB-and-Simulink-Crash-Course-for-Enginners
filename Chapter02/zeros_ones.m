% Arrays of zeros, ones
clear;clc;
row = 3;
col = 2;
A = zeros(row,col); % array of zeroes
B = ones(row,col);  % array of ones
fprintf('Array of zeros:\n');
disp(A);
fprintf('Array of ones:\n');
disp(B);
%%
% Arrays of random numbers
clear;clc;
row = 3;
col = 2;
num_min = 2;
num_max = 8;
A = rand(row,col);  % uniformly distributed random numbers
B = randn(row,col); % normally distributed random numbers
C = randi([num_min,num_max],[row,col]); % uniformly distributed random pseudo-integer
fprintf('Array of uniformly distributed random numbers:\n');
disp(A);
fprintf('Array normally distributed random numbers:\n');
disp(B);
fprintf('Array uniformly distributed random pseudo-integer:\n');
disp(C);