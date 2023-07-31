% Delta connected balanced load
% Line to line voltages:
% V_AB=120 V angle 0 deg;V_BC=120 V angle 120 deg;V_CA=120 V angle 240 deg
% Impedances:
% Z=10 Ohms angle 10 deg
% Find: Phase currents I_AB, I_BC, I_CA
% Find: Line currents I_A, I_B, I_C
clc;clear;
% Line to line voltages
V_AB=120*cos(0)+i*120*sin(0);
V_BC=120*cos(120*(pi/180))+i*120*sin(120*(pi/180));
V_CA=120*cos(240*(pi/180))+i*120*sin(240*(pi/180));
% Impedances
Z=10*cos(10*(pi/180))+i*10*sin(10*(pi/180));
% Phase currents
I_AB=V_AB/Z;
I_BC=V_BC/Z;
I_CA=V_CA/Z;
Ip=abs(I_AB);
I_AB_ang=angle(I_AB)*180/pi;
I_BC_ang=angle(I_BC)*180/pi;
I_CA_ang=angle(I_CA)*180/pi;
fprintf('Phase currents:\n');
fprintf('I_AB= %.3f A      Angle= %.3f degree\n',Ip,I_AB_ang);
fprintf('I_BC= %.3f A      Angle= %.3f degree\n',Ip,I_BC_ang);
fprintf('I_CA= %.3f A      Angle= %.3f degree\n',Ip,I_CA_ang);
% Line currents
I_A=I_AB-I_CA;
I_B=I_BC-I_AB;
I_C=I_CA-I_BC;
IL=abs(I_AB);
I_A_ang=angle(I_A)*180/pi;
I_B_ang=angle(I_B)*180/pi;
I_C_ang=angle(I_C)*180/pi;
fprintf('Line currents:\n');
fprintf('I_A= %.3f A      Angle= %.3f degree\n',IL,I_A_ang);
fprintf('I_B= %.3f A      Angle= %.3f degree\n',IL,I_B_ang);
fprintf('I_C= %.3f A      Angle= %.3f degree\n',IL,I_C_ang);