clc;
figure(1);
plot(V1,P1,'LineWidth',2);
hold on;
plot(V2,P2,'LineWidth',2);
hold on;
plot(V3,P3,'LineWidth',2);
grid on;
xlabel('Voltage, V (Volt)');
ylabel('Power, P (Watt)');
title('PV characteristic curve of photovoltaic cell');
labels={'Solar Irradiance: 800 W/m^2','Solar Irradiance: 1000 W/m^2',...
    'Solar Irradiance: 1200 W/m^2'};
legend(labels,'Location','Northwest');