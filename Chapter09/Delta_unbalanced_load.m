% Delta connected unbalanced load
% Line to line voltages:
% V_AB=120 V angle 0 deg;V_BC=110 V angle 120 deg;V_CA=150 V angle 240 deg
% Impedances:
% Z1=10 Ohms angle 10 deg;Z2=15 Ohms angle -25 deg;Z3=20 Ohms angle -10 deg;
% Find: Phase currents I_AB, I_BC, I_CA
% Find: Line currents I_A, I_B, I_C
clc;clear;
% Line to line voltages
V_AB=120*cos(0)+i*120*sin(0);
V_BC=110*cos(120*(pi/180))+i*110*sin(120*(pi/180));
V_CA=150*cos(240*(pi/180))+i*150*sin(240*(pi/180));
% Impedances
Z1=10*cos(10*(pi/180))+i*10*sin(10*(pi/180));
Z2=15*cos(-25*(pi/180))+i*15*sin(-25*(pi/180));
Z3=20*cos(-10*(pi/180))+i*20*sin(-10*(pi/180));
% Phase currents
I_AB=V_AB/Z1;
I_BC=V_BC/Z2;
I_CA=V_CA/Z3;
I_AB_mag=abs(I_AB);
I_AB_ang=angle(I_AB)*180/pi;
I_BC_mag=abs(I_AB);
I_BC_ang=angle(I_BC)*180/pi;
I_CA_mag=abs(I_CA);
I_CA_ang=angle(I_CA)*180/pi;
fprintf('Phase currents:\n');
fprintf('I_AB= %.3f A      Angle= %.3f degree\n',I_AB_mag,I_AB_ang);
fprintf('I_BC= %.3f A      Angle= %.3f degree\n',I_BC_mag,I_BC_ang);
fprintf('I_CA= %.3f A      Angle= %.3f degree\n',I_CA_mag,I_CA_ang);
% Line currents
I_A=I_AB-I_CA;
I_B=I_BC-I_AB;
I_C=I_CA-I_BC;
I_A_mag=abs(I_A);
I_A_ang=angle(I_A)*180/pi;
I_B_mag=abs(I_B);
I_B_ang=angle(I_B)*180/pi;
I_C_mag=abs(I_C);
I_C_ang=angle(I_C)*180/pi;
fprintf('Line currents:\n');
fprintf('I_A= %.3f A      Angle= %.3f degree\n',I_A_mag,I_A_ang);
fprintf('I_B= %.3f A      Angle= %.3f degree\n',I_B_mag,I_B_ang);
fprintf('I_C= %.3f A      Angle= %.3f degree\n',I_C_mag,I_C_ang);