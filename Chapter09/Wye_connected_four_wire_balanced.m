% Wye connected four wire balanced load
% Phase voltages:
% V_AN=110 V angle 0 deg;V_BN=110 V angle 120 deg;V_CN=110 V angle 240 deg
% Impedances:
% Z=10 Ohms angle 10 deg;
% Find: Line to line voltages V_AB, V_BC, V_CA
% Find: Phase currents I_AN, I_BN, I_CN
% Find: Line currents I_A, I_B, I_C

clc;clear;
% Line to line voltages
V_AN=110*cos(0)+i*110*sin(0);
V_BN=110*cos(120*(pi/180))+i*110*sin(120*(pi/180));
V_CN=110*cos(240*(pi/180))+i*110*sin(240*(pi/180));
% Impedances
Z=10*cos(10*(pi/180))+i*10*sin(10*(pi/180));
% Line to line voltages
V_AB=V_AN-V_BN;
V_BC=V_BN-V_CN;
V_CA=V_CN-V_AN;
V_L=abs(V_AB);
V_AB_ang=angle(V_AB)*180/pi;
V_BC_ang=angle(V_BC)*180/pi;
V_CA_ang=angle(V_CA)*180/pi;
fprintf('Line to line voltages:\n');
fprintf('V_AB= %.3f A      Angle= %.3f degree\n',V_L,V_AB_ang);
fprintf('V_BC= %.3f A      Angle= %.3f degree\n',V_L,V_BC_ang);
fprintf('V_CA= %.3f A      Angle= %.3f degree\n\n',V_L,V_CA_ang);
% Phase currents
I_AN=V_AN/Z;
I_BN=V_BN/Z;
I_CN=V_CN/Z;
I_AN_mag=abs(I_AN);
I_AN_ang=angle(I_AN)*180/pi;
I_BN_mag=abs(I_BN);
I_BN_ang=angle(I_BN)*180/pi;
I_CN_mag=abs(I_CN);
I_CN_ang=angle(I_CN)*180/pi;
fprintf('Phase currents:\n');
fprintf('I_AN= %.3f A      Angle= %.3f degree\n',I_AN_mag,I_AN_ang);
fprintf('I_BN= %.3f A      Angle= %.3f degree\n',I_BN_mag,I_BN_ang);
fprintf('I_CN= %.3f A      Angle= %.3f degree\n\n',I_CN_mag,I_CN_ang);
% Line currents
fprintf('Line currents:\n');
fprintf('I_A= %.3f A      Angle= %.3f degree\n',I_AN_mag,I_AN_ang);
fprintf('I_B= %.3f A      Angle= %.3f degree\n',I_BN_mag,I_BN_ang);
fprintf('I_C= %.3f A      Angle= %.3f degree\n',I_CN_mag,I_CN_ang);