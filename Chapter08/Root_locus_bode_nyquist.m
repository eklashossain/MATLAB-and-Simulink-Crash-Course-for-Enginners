%% Root locus: 
% Example 1: Stable system
G1 = tf([50],[1 12 11]);
figure(1)
rlocus(G1)
% Example 2: Marginally Stable
G2 = tf([1 1],[1 9 0 0]);
figure(2)
rlocus(G2)
% Example 3: Unstable
G3 = tf([1 1],[1 -20 -10 1])
figure(3)
rlocus(G3)
%% Bode plot
% Example 1: Stable system
G1 = tf([50],[1 12 11]);
figure(1)
margin(G1);
grid on;
% Example 2: Marginally Stable
G2 = tf([1 1],[1 9 0 0]);
figure(2)
margin(G2);
grid on;
% Example 3: Unstable
G3 = tf([1 1],[1 -20 -10 1]);
figure(3)
margin(G3);
grid on;
%% Nyquist plot
% Example 1: Stable system
G1 = tf([50],[1 12 11]);
figure(1)
nyquist(G1)
grid on;
% Example 2: Marginally Stable
G2 = tf([1 1],[1 9 0 0]);
figure(2)
nyquist(G2)
grid on;
% Example 3: Unstable
G3 = tf([400],[1 4 50 45]);
%G3=tf([1 1],[1 -20 -10 1])
figure(3)
nyquist(G3)
grid on;