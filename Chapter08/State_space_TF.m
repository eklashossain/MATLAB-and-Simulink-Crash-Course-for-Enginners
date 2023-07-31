% State-space model to transfer function
% Resistance: R
% Inductance: L
% Capacitance: C
% Numerator: N
% Denominator: D
clc;clear;
R= 2; L=1; C=0.5;

% State-space metrices

A = [0 1/C; -1/L -R/L];
B = [0; 1/L];
C = [-1 -R];
D = [1];
 
% State-space model.
sys = ss(A, B, C, D);
 
% Transfer function
[Num Den] = ss2tf(A,B,C,D);
disp('Transfer function:')
TF=tf([Num],[Den])

%% Verification
syms s
I=eye(3);
G1= C*inv(s*I-A)*B+D;
disp('Transfer function using formula:')
disp(simplify(G1))