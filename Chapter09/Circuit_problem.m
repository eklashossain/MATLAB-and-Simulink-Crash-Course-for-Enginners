% Circuit problem
% R1= 2 ohms; R2=R3= 4 ohms
% Voltage source, E =10 V
% Determine loop current IL1 and IL2
% Determine current, I1, I2, and I3
% Determine voltage across resistance R3: VR3
% Determine voltage across resistance R2: VR2
% Determine voltage across resistance R1: VR1
clc;clear;
R1=2; R2=4; R3=4;
syms IL1 IL2
eqn1= 6*IL1-4*IL2==10;
eqn2= -4*IL1+8*IL2==0;
[IL1,IL2]=solve(eqn1,eqn2);
fprintf('The ABCD loop current, IL1: %.3f A\n',IL1);
fprintf('The BEFC loop current, IL2: %.3f A\n',IL2);

I1=IL1; I2=IL2;
I3= I1-I2;

fprintf('The currents in the circuit:\n');
fprintf('I1= %.3f A  I2= %.3f A  I3= %.3f A\n',I1,I2,I3);

VR1=I1*R1;
VR2=I3*R2;
VR3=I2*R3;

fprintf('The voltage across R1, VR1= %.3f V\n',VR1);
fprintf('The voltage across R2, VR2= %.3f V\n',VR2);
fprintf('The voltage across R3, VR3= %.3f V\n',VR3);