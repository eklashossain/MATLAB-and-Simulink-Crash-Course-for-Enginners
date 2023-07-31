% Delta to wye conversion
% Delta configured resistances:
% Rd1=10 ohms, Rd2= 5 ohms, Rd3= 20 ohms
% Equivaelent wye configured resistances:
% Ry1, Ry2, Ry3
clc;clear;
Rd1=10; Rd2=5; Rd3=20;
Ry1= (Rd1*Rd2)/(Rd1+Rd2+Rd3);
Ry2= (Rd1*Rd3)/(Rd1+Rd2+Rd3);
Ry3= (Rd2*Rd3)/(Rd1+Rd2+Rd3);
fprintf('Equivalent wye configured resistances:\n');
fprintf('Ry1= %f   Ry2= %f    Ry3= %f\n',Ry1,Ry2,Ry3);
%%
% Wye to delta conversion
% Delta configured resistances:
% Ry1=10 ohms, Ry2= 5 ohms, Ry3= 20 ohms
% Equivaelent wye configured resistances:
% Rd1, Rd2, Rd3
clc;clear;
Ry1=10; Ry2=5; Ry3=20;
Rd1= (Ry1*Ry2+Ry2*Ry3+Ry3*Ry1)/Ry3;
Rd2= (Ry1*Ry2+Ry2*Ry3+Ry3*Ry1)/Ry2;
Rd3= (Ry1*Ry2+Ry2*Ry3+Ry3*Ry1)/Ry1;
fprintf('Equivalent delta configured resistances:\n');
fprintf('Rd1= %.3f   Rd2= %.3f    Rd3= %.3f\n',Rd1,Rd2,Rd3);
%%
% Equivalent resistance with Delta-wye conversion
% R1, R2, R3: Delta configuration
% First step: Conversion into wye configuration
% Hence,find Ry1, Ry2, Ry2
% Second step: Find Rs1 and Rs2
% Third step: Find Rp
% Fourth step: Find overall equivalent resistance, Req
clc;clear;
R1=2; R2=4; R3=6; R4=3; R5=2;
Ry1= (R1*R2)/(R1+R2+R3);
Ry2= (R1*R3)/(R1+R2+R3);
Ry3= (R2*R3)/(R1+R2+R3);
Rs1= Ry2+R4;
Rs2= Ry3+R5;
Rp= (Rs1*Rs2)/(Rs1+Rs2);
Req= Ry1+Rp;
fprintf('The equivalent resistance: %.3f ohms\n',Req);







