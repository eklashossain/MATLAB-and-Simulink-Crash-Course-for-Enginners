% Surface plot
% Data: Electricity day-ahead market price (2019)
% LMP: Local Marginal Price ($/MW)
% Day: Jan-01-2019 to Jan-07-2019
% Hour: 24 hours
clc; clear;
LMP=xlsread('surface2.xlsx');
Day=1:7;
Hour=1:24;
[DAY,HOUR]=meshgrid(Day,Hour);
surf(DAY,HOUR,LMP')
colorbar
xlabel('Days (Jan 1 - Jan 7)');
ylabel('Hours');
zlabel('Price ($/MW)');
title('Electricity day-ahead market price (2019)');
