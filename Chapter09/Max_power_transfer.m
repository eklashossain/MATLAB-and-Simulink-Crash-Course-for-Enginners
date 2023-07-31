% Maximum power transfer theorem
% Rth= 5 ohms; Vth= 10 V
clc;clear;
Rth=5; Vth=10;
RL= 1:1:26;
for i=1:1:26
    I(i)=Vth/(Rth+RL(i));
    Power(i)=I(i)^2*RL(i);
end
plot(RL,Power,'o-b','LineWidth',1.2);
xlabel('Load resistance,R_L (Ohms)');
ylabel('Output power, P (W)');
title('Maximum power transfer theorem');
grid on;
% Maximum power, when RL=Rth
RL=5;
P_max=(Vth/(Rth+RL))^2*RL;
fprintf('Maximum output power= %.3f\n',P_max);