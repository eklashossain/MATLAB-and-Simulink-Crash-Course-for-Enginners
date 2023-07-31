% Transistor problem
% Common base connection
% Emitter current, I_E= 10 mA; Alpha=0.8
% Determine: Collector current, I_C;
% Determine: Base current, I_B;
clc;clear;
I_E=10; Alpha=0.8;
I_C=Alpha*I_E;
I_B= I_E-I_C;
fprintf('Collector current: %.3f mA\n',I_C);
fprintf('Base current: %.3f mA\n',I_B);