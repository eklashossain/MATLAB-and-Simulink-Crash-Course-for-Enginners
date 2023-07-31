% Some instances of the usage of dot operator
clc;clear;
% A and B are two arrays;
% scalar_val is a scalar value;
A = randi([1,2],2,3);
B = randi([1,2],2,3);
fprintf('Some instances of the usage of dot operator:\n');
fprintf('-----------------------------------------------\n');
% Dot multiplication
fprintf('Dot multiplication of two arrays:\n')
disp(A.*B);
% Element-wise division between two arrays
fprintf('Element-wise division of two arrays:\n')
disp(A./B);
% Division: Numerator-scalar and denominator-array 
scalar_val = 5;
fprintf('Division when numerator-scalar and denominator-array:\n')
disp(scalar_val./A);
% Power value: Either the base, or power is an array 
Base = 10;
fprintf('Power term is an array:\n')
disp(Base.^A)
fprintf('Base term is an array:\n')
disp(A.^scalar_val)

