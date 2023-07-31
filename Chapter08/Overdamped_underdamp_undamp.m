%% Overdamped system : zeta=1.5
clc;clear;
K=2;
omega_n=5;
zeta=1.5;
s=tf('s');
disp('Transfer function:')
G=(K*omega_n^2)/(s^2+2*zeta*omega_n*s+omega_n^2)
step(G);
grid on;
ylim([0 2.5]);
disp('Parameters:')
disp(stepinfo(G))
% Pole-zero map
figure(2);
pzmap(G)
grid on
%% Critically damped system : zeta=1
clc;clear;
K=2;
omega_n=5;
zeta=1;
s=tf('s');
disp('Transfer function:')
G=(K*omega_n^2)/(s^2+2*zeta*omega_n*s+omega_n^2)
step(G);
grid on;
ylim([0 2.5]);
disp('Parameters:')
disp(stepinfo(G))
% Pole-zero map
figure(2);
pzmap(G)
grid on
%% Underdamped system : zeta=0.5
clc;clear;
K=2;
omega_n=5;
zeta=0.5;
s=tf('s');
disp('Transfer function:')
G=(K*omega_n^2)/(s^2+2*zeta*omega_n*s+omega_n^2)
step(G);
grid on;
%xlim([0 5]);
ylim([0 2.5]);
disp('Parameters:')
disp(stepinfo(G))
% Pole-zero map
figure(2);
pzmap(G)
grid on
%% Undamped system : zeta=0
clc;clear;
K=2;
omega_n=5;
zeta=0;
s=tf('s');
disp('Transfer function:')
G=(K*omega_n^2)/(s^2+2*zeta*omega_n*s+omega_n^2)
step(G);
grid on;
xlim([0 5]);
ylim([-0.5 5]);
disp('Parameters:')
disp(stepinfo(G))
% Pole-zero map
figure(2);
pzmap(G)
grid on
%% Negative damped system : Zeta=-2
clc;clear;
K=2;
omega_n=5;
zeta=-2;
s=tf('s');
disp('Transfer function:')
G=(K*omega_n^2)/(s^2+2*zeta*omega_n*s+omega_n^2)
step(G);
grid on;
xlim([0 0.25]);
ylim([-0.5 2.5]);
disp('Parameters:')
disp(stepinfo(G))
% Pole-zero map
figure(2);
pzmap(G)
grid on