clc; clear all;
% Voltage,V = 100∠60
% Current, I = 3∠30  
% Impedance, Z = V/I 
V_mag=100;
V_angle=60;
I_mag=3;
I_angle=30;
% Rectangular form
[Vx,Vy]=pol2cart(V_angle,V_mag);
V_rec=Vx+i*Vy;
[Ix,Iy]=pol2cart(I_angle,I_mag);
I_rec=Ix+i*Iy;
Z_rec=V_rec/I_rec;
disp('Impedance in rectangular form:');
Z_rec
% Polar form
Z_mag=abs(Z_rec);
Z_angle=angle(Z_rec)*(180/pi); % Unit: Degree
Z_polar=[Z_mag,Z_angle];
disp('Impedance in polar form- [Magnitude  Angle(Degree)]:');
Z_polar
%%
clc; clear all;
% Resistance, R=10 ohms
% Capacitance, C=2 micro F
% Inductance, L=5 mH
% Frequency, f=60Hz
% Impedance, Z=R+jX=R+j(X_L+X_C)
% Here, 
% X_L=Inductive Reactance=omega*L=2*pi*f*L
% X_C=Capactive Reactance=1/(omega*C)=-1/(2*pi*f*C)

R=5; L=15*10^(-3); C=2*10^(-6); f=60; 
X_L=2*pi*f*L;
X_C=-1/(2*pi*f*C);
% Rectangular form
Z_rec=R+i*(X_L-X_C);
disp('Impedance in rectangular form:');
Z_rec
% Polar form
Z_mag=abs(Z_rec);
Z_angle=angle(Z_rec)*(180/pi); % Unit: Degree
Z_polar=[Z_mag,Z_angle];
disp('Impedance in polar form- [Magnitude  Angle(Degree)]:');
Z_polar


