% Area plot 
% Data: Typical load curve over 24 hours in MW 
clc; clear;
a=xlsread('Area_plot_2.xlsx');
y=a(:,2:4)
area(y);
xlim([0 24]);
xlabel('Hours');
ylabel('Load (MW)');
title('Load curve in MW')
legend('Base load','Shoulder load','Peak load','Location','northwest');
