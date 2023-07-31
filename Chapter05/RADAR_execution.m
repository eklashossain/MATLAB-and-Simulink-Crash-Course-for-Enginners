clc;clear;
% Execution of Radar.m function
% Data: Four features of three different types battery
% Battery types: Li-ion, Liquid super capacitors, NaS
% Features: Power density, Energy density, Life cycle, Safety

% Input
I=[2 5 2 4;5 2.5 5 2;1 2 1.5 3];
Feature={'Power density','Energy density','Life cycle','Safety'};
Legend={'Li-ion','Liquid super capacitor','NaS'};
line_color=['r','g','b'];
Title={'Comparison among batteries'};
% Function call
RADAR(I,Feature,Legend,line_color,Title)
