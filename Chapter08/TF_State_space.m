% Transfer function to state-space model 
% Numerator: N
% Denominator: D
clc;clear;
% Transfer function
N=[2];
D=[1 20 2];
disp('Transfer function:')
G=tf([N],[D])

% State-space metrices
[A,B,C,D]=tf2ss([N],[D]);
disp('State-space model:')
state_space = ss(A, B, C, D)
