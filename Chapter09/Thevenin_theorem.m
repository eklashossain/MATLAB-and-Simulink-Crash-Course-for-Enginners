% Thevenin's theorem
% R1= 4 ohms; R2= 2 ohms; R3= 3 ohms; RL= 5 ohms; V= 10 V;
% Determine: Thevenin's voltage, Vth
% Determine: Thevenin's equivalent resistance, Rth
% Determine: Load current, IRL
clc;clear;
R1=4; R2=2; R3=3; RL=5; V=10;
Vth= ((R2)/(R1+R2))*V;
Rth= ((R1*R2)/(R1+R2))+R3;
fprintf('Thevenin voltage: %.3f V\n',Vth);
fprintf('Thevenin equivalent resistance: %.3f ohms\n',Rth);
IRL=Vth/(Rth+RL);
fprintf('Load current: %.3f A\n',IRL);