%% Transfer function: (s+50)/(s^2+11s+12)
G=tf([1 50],[1 11 12]);
disp('Transfer function:')
G
%% Transfer function:
clc;clear;
syms s
G=@(s)(s+50)/(s^2+11*s+12);
disp('Transfer function:')
disp(G(s))
%% DC gain
% Transfer eqn: 20/(s^2+10*s+11)
clc;clear;
syms s
G=@(s) 20/(s^2+10*s+11);
DC_gain=limit(G(s),s,0);
fprintf('DC gain: %f\n',DC_gain)
%% Intial value problem
% Transfer eqn: (2 + 6*s + 2*s^2)/(2*s*(s+2)^2)
clc;clear;
syms s
G=@(s) (2 + 6*s + 2*s^2)/(2*s*(s+2)^2);
Initial_val=limit(s*G(s),s,Inf);
fprintf('Inital value: %.3f\n',Initial_val);
%% Final value problem
% Transfer function: (2 + 6*s + 2*s^2)/(2*s*(s+2)^2)
clc;clear;
syms s
G=@(s) (2 + 6*s + 2*s^2)/(2*s*(s+2)^2);
Final_val=limit(s*G(s),s,0);
fprintf('Final value: %.3f\n',Final_val);
%% Poles/zeros
% Transfer function: (s+50)/(s^2+11s+12)
clc;clear;
G=tf([1 50],[1 11 12]);
disp('Transfer function:')
G
poles=pole(G)
zeros=zero(G)
% Pole-zero map
pzmap(G)
grid on


