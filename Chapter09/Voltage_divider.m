% Voltage divider
% R1= 2 ohms; R2= 4 ohms; R3=8 ohms; E= 24 V
% Determine the voltage across the resistance R2 and R3
clc;clear;
R1=2; R2=4; R3=8; E=24;
VR2=(R2/(R1+R2+R3))*E;
VR3=(R3/(R1+R2+R3))*E;
fprintf('Voltage across the resistance R2: %.3f V\n',VR2);
fprintf('Voltage across the resistance R3: %.3f V\n',VR3);
