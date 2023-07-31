clc; clear all;
disp('Input sequence: ');
x=[1 4 5 7]
F=fft(x);
disp('Fourier transform of x: ');
F
inv_F=ifft(F);
disp('Inverse Fourier transform of F: ');
inv_F
