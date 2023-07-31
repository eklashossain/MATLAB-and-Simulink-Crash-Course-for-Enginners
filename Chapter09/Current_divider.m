% Current divider
% R1= 2 ohms; R2= 4 ohms; I= 16 A
% Determine the current through the resistances R1 and R2
clc;clear;
R1=2; R2=4; I=16;
I1=(R2/(R1+R2))*I;
I2=(R1/(R1+R2))*I;
fprintf('Current through the resistance R1, I1: %.3f A\n',I1);
fprintf('Current through the resistance R2, I2: %.3f A\n',I2);