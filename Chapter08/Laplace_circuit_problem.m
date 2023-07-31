%% Transfer function: s^2/(s^2+2*s+2)
clc;clear;
disp('Transfer function:')
G=tf([1 0 0],[1 2 2])
% Poles/zeros
poles=pole(G)
zeros=zero(G)
% Pole-zero map
pzmap(G)
grid on
% DC gain
syms s
G=@(s) s^2/(s^2+2*s+2);
DC_gain=limit(G(s),s,0);
fprintf('DC gain: %f\n',DC_gain)
% Intial value 
Initial_val=limit(s*G(s),s,Inf);
fprintf('Inital value: %.3f\n',Initial_val);
% Final value 
Final_val=limit(s*G(s),s,0);
fprintf('Final value: %.3f\n',Final_val);




