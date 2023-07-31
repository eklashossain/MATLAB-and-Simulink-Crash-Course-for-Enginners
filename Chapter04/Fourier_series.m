clc; clear all;
% Input: Square wave function
% T=2; Magnitude = 1; Omega=pi
t=-7:0.01:7;
x=1-square(pi*(t+1));
plot(t,x,'LineWidth',1.5)
xlim([0 5]);
%ylim([0 2.5]);
grid on;
hold on;

% Fourier Series
syms k t
omega=pi;
T=2;
k=1:5;
a_0=(2/T)*int(100,t,0,1);
a_k=(2/T)*int(100*cos(k*omega*t),t,0,1);
b_k=(2/T)*int(100*sin(k*omega*t),t,0,1);
f=(a_0/2)+sum(a_k.*cos(k*omega*t))+sum(b_k.*sin(k*omega*t));
fplot(f,[0,7])
grid on;
legend({'Square function','Fourier series'})

%%
i=1;
for t=0:100
    F(i)=(4*sin(pi*t))/pi + (4*sin(3*pi*t))/(3*pi) + (4*sin(5*pi*t))/(5*pi) + 1;
    i=i+1;
end
%%
plot(F);
%hold on;
%%
F=[0 1 2 3];
a=ifft(F);
plot(a);
%hold off;
grid on;