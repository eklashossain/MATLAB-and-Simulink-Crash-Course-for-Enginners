clc; clear all;
%% Example 1: Stable
sys1 = tf([50],[1 12 11]);
rlocus(sys1)
%%
sys1 = tf([50],[1 12 11]);
bode(sys1), grid
m = allmargin(sys1)
GainMargins_dB = mag2db(m.GainMargin)
margin(sys1)
%%
nyquist(sys1)
%% Example 2: Marginally Stable
sys2 = tf([1 1],[1 9 0 0]);
rlocus(sys2)
%%
sys2 = tf([1 1],[1 9 0 0]);
bode(sys2), grid
m = allmargin(sys2)
GainMargins_dB = mag2db(m.GainMargin)
margin(sys2)
%% Example 2: Unstable
sys3 = tf([1 1],[1 -20 -10 1])
rlocus(sys3)
%%
bode(sys3), grid
m = allmargin(sys3)
GainMargins_dB = mag2db(m.GainMargin)
%margin(sys3)
%%
nyquist(sys3)