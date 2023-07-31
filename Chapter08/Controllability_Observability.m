% Controllability & Observability
% State-spece representation:
% x' = Ax + Bu
% y  = Cx + Du     
clc;clear;
A = [2 0 -1;-3 4 0;10 6 -8];
B = [-1;0;1];
C = [3 2 4];
D = [1];

% Controllability test
disp('Controllability matrix:');
Control_M = ctrb(A,B)
R_Con_M = rank(Control_M);
R_A = rank(A);

if (R_Con_M == R_A)
    disp('Comment: The system is controllable');
else
    disp('Comment: The system is not controllable');
end
fprintf('-------------------------------\n');
% Observability test
disp('Observability matrix:');
Observe_M = obsv(A,C)
R_Obs_M = rank(Observe_M);
R_A = rank(A);

if (R_Obs_M == R_A)
    disp('Comment: The system is observable');
else
    disp('Comment: The system is not observable');
end