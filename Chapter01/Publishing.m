%% Finding Maximum and minimum value from an array 
clear;clc;
A = randi([1,30],1,5)
max_A = max(A);
min_A = min(A);
fprintf('Maximum value of the array A:');
disp(max_A);
fprintf('Minimum value of the array A:');
disp(min_A);