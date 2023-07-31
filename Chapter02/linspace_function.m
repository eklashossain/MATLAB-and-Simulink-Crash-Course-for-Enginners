% Linearly spaced one-dimensional array
% Using linspace function
clear;clc;
Up_range = 2;
Low_range = 12;
point = 5;
A = linspace(Up_range,Low_range,point);
fprintf('Linearly spaced one-dimensional array:\n');
fprintf('-----------------------------------------\n');
fprintf('Using linspace function:\n');
disp(A)
% Alternative version
space = 2.5;
B = Up_range:space:Low_range;
fprintf('Without using linspace function:\n');
disp(B)
%%
% Finding Maximum and minimum value from an array 
clear;clc;
A = randi([1,30],1,5)
max_A = max(A);
min_A = min(A);
fprintf('Maximum value of the array A:');
disp(max_A);
fprintf('Minimum value of the array A:');
disp(min_A);