% Wye connected three wire unbalanced load
% Phase voltages:
% V_ao=120 V angle 10 deg;V_bo=110 V angle 150 deg;V_co=150 V angle -50 deg
% Impedances:
% Z1=10 Ohms angle 10 deg;Z2=15 Ohms angle -25 deg;Z3=20 Ohms angle -10 deg;
% Find: Line to line voltages V_AB, V_BC, V_CA
% Find: Line currents I_A, I_B, I_C
clc;clear;
% Line to line voltages
V_ao=120*cos(10)+i*120*sin(10);
V_bo=110*cos(150*(pi/180))+i*110*sin(150*(pi/180));
V_co=150*cos(-50*(pi/180))+i*150*sin(-50*(pi/180));
% Impedances
Z1=10*cos(10*(pi/180))+i*10*sin(10*(pi/180));
Z2=15*cos(-25*(pi/180))+i*15*sin(-25*(pi/180));
Z3=20*cos(-10*(pi/180))+i*20*sin(-10*(pi/180));
% Line to line voltages
V_AB=V_ao-V_bo;
V_BC=V_bo-V_co;
V_CA=V_co-V_ao;
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
% Line currents
I_A=V_ao/Z1;
I_B=V_bo/Z2;
I_C=V_co/Z3;
I_A_mag=abs(I_A);
I_A_ang=angle(I_A)*180/pi;
I_B_mag=abs(I_B);
I_B_ang=angle(I_B)*180/pi;
I_C_mag=abs(I_C);
I_C_ang=angle(I_C)*180/pi;
fprintf('Line currents:\n');
fprintf('I_A= %.3f A      Angle= %.3f degree\n',I_A_mag,I_A_ang);
fprintf('I_B= %.3f A      Angle= %.3f degree\n',I_B_mag,I_B_ang);
fprintf('I_C= %.3f A      Angle= %.3f degree\n\n',I_C_mag,I_C_ang);