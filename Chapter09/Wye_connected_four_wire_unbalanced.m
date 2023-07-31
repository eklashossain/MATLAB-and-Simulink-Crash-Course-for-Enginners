% Wye connected four wire unbalanced load
% Phase voltages:
% V_AN=120 V angle 10 deg;V_BN=110 V angle 150 deg;V_CN=150 V angle -50 deg
% Impedances:
% Z1=10 Ohms angle 10 deg;Z2=15 Ohms angle -25 deg;Z3=20 Ohms angle -10 deg;
% Find: Line to line voltages V_AB, V_BC, V_CA
% Find: Phase currents I_AN, I_BN, I_CN
% Find: Line currents I_A, I_B, I_C

clc;clear;
% Line to line voltages
V_AN=120*cos(10)+i*120*sin(10);
V_BN=110*cos(150*(pi/180))+i*110*sin(150*(pi/180));
V_CN=150*cos(-50*(pi/180))+i*150*sin(-50*(pi/180));
% Impedances
Z1=10*cos(10*(pi/180))+i*10*sin(10*(pi/180));
Z2=15*cos(-25*(pi/180))+i*15*sin(-25*(pi/180));
Z3=20*cos(-10*(pi/180))+i*20*sin(-10*(pi/180));
% Line to line voltages
V_AB=V_AN-V_BN;
V_BC=V_BN-V_CN;
V_CA=V_CN-V_AN;
V_AB_mag=abs(V_AB);
V_AB_ang=angle(V_AB)*180/pi;
V_BC_mag=abs(V_BC);
V_BC_ang=angle(V_BC)*180/pi;
V_CA_mag=abs(V_CA);
V_CA_ang=angle(V_CA)*180/pi;
fprintf('Line to line voltages:\n');
fprintf('V_AB= %.3f A      Angle= %.3f degree\n',V_AB_mag,V_AB_ang);
fprintf('V_BC= %.3f A      Angle= %.3f degree\n',V_BC_mag,V_BC_ang);
fprintf('V_CA= %.3f A      Angle= %.3f degree\n\n',V_CA_mag,V_CA_ang);
% Phase currents
I_AN=V_AN/Z1;
I_BN=V_BN/Z2;
I_CN=V_CN/Z3;
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