% diary function
clc;clear;
a = input('Enter a:');
b = input('Enter b:');
sum = a + b;
fprintf('Summation: %d\n',sum);
diary('diaryFile.txt');