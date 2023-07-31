% fprintf function
clear;clc;
var = int8(5);
var1 = 5.25;
fprintf('Usage of fprintf() function:');
fprintf('\n');
fprintf('The value of the variable is: %d\n',var);
fprintf('The value of the variable is: %f\n',var1);
%%
% disp function
clear;clc;
var = 5.25;
disp('Usage of disp() function:');
disp(var);
disp(['The value of the variable is: ',num2str(var)]);
