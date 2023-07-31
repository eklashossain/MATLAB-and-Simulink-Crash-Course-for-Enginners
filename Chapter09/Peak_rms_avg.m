% v(t)=10 sin(2*pi*f*t)
% f= 60 Hz; t= 0:0.1 sec
% Determine: Peak voltage, Vp
% Determine: Peak to peak voltage, Vpp
% Determine: RMS voltage, V_rms
% Determine: Average voltage, V_avg
% Determine: Instantaneous voltage at T=0.02 sec, v_inst
clc;clear;
f = 60;
t = 0:0.0001:0.1;
v = 2*sin(2*pi*f*t);
plot(t,v,'LineWidth',1.5);
xlabel('Time (sec)');
ylabel('Voltage (volt)');
ylim([-2.5 2.5]);
grid on;
Vp=max(abs(v));
fprintf('Peak voltage: %.3f\n',Vp);
Vpp=2*Vp;
fprintf('Peak to peak voltage: %.3f\n',Vpp);
V_rms=(1/sqrt(2))*Vp;
fprintf('RMS voltage: %.3f\n',V_rms);
V_avg=(2/pi)*Vp;
fprintf('Average voltage: %.3f\n',V_avg);
T=0.02;
V_inst=2*sin(2*pi*f*T);
fprintf('Instantaneous voltage at T=0.02 sec: %.3f\n',V_inst);