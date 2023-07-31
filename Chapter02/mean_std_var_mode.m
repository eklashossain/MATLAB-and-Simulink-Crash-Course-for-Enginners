% Mean, variance, standard deviation, and mode
clear;clc;
A = randi([1,50],1,6);
mean_A = mean(A);
variance_A = var(A);
std_A = std(A);
mode_A = mode(A);
fprintf('One-dimensional array, A:\n');
disp(A);
fprintf('Mean value of A = %.2f\n',mean_A);
fprintf('Variance of A = %.2f\n',variance_A);
fprintf('Standard deviation of A = %.2f\n',std_A);
fprintf('Mode of A = %.2f\n',mode_A);