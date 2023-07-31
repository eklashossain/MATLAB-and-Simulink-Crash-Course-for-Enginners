% Creating table
% Headers: Battery name, Energy density, Lifecycle, Safety
clear;clc;
Battery_name = {'Li-ion';'Liquid super capacitor';'Lead acid'};
Energy_density = [5;2.5;2];
Life_cycle = [2;5;1.5]; 
safety = {'High';'Low';'Moderate'};
TABLE = table(Battery_name,Energy_density,Life_cycle,safety);
fprintf('Comparison among different battery types:\n');
fprintf('--------------------------------------------\n');
disp(TABLE);
% Accessing each column of the table
fprintf('Accessing the data of Battery_name column:\n');
disp(TABLE.Battery_name);
fprintf('Accessing the data of Energy_density column:\n');
disp(TABLE.Energy_density);
fprintf('Accessing the data of Life_cycle column:\n');
disp(TABLE.Life_cycle);
fprintf('Accessing the data of safety column:\n');
disp(TABLE.safety);