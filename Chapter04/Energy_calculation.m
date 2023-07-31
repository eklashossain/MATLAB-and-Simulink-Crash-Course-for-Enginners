clc; clear all;
% Real power,P = 10 W
% Reactive power,Q = 20 VAR
% Time, t = 24 hours = 86400 sec
% Aparent power,S is a complex number.
% Electrical energy, E=P*t

P=10; Q=20; t=86400;
% Rectangular form
S_rec=complex(P,Q);
disp('Apparent power in rectangular form:');
S_rec
% Polar form
S_mag=abs(S_rec);
S_angle=angle(S_rec)*(180/pi); % Unit: Degree
S_polar=[S_mag,S_angle];
disp('Apparent power in polar form- [Magnitude  Angle(Degree)]:');
S_polar
% Electrical energy
E=P*t;
disp(['Electrical energy: ',num2str(E),' Joule']);
