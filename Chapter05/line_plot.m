% Line plot
% Data of global temperature from 2010:2020
clc;clear all;
year=2010:1:2020;
temp=[14.46 14.55 14.48 14.67 14.82 15.16 14.83 ...
       14.88 14.89 15.05 14.78];
plot(year,temp,'b-o','linewidth',1.5); 
xlabel('Years');
ylabel('Temperature (Degree celcius)');
title('Line plot of global temperature (2010-2020)')
grid on;
%%
% Subplot
% Data of global temperature from 2010:2020
year=2010:1:2020;
temp_C=[14.46 14.55 14.48 14.67 14.82 15.16 14.83 ...
       14.88 14.89 15.05 14.78];
temp_F=[58.028 58.19 58.064 58.406 58.676 59.288 ...
       58.694 58.78 58.802 59.09 58.604];
subplot (1,2,1);
plot(year,temp_C,'b-o','linewidth',1.5); 
xlabel('Years');
ylabel('Temperature (degree celcius)');
title('Global temperature (2010-2020)')
grid on;
subplot (1,2,2);
plot(year,temp_F,'k-o','linewidth',1.5);
xlabel('Years');
ylabel('Temperature (farenhite)');
title('Global temperature (2010-2020)')
grid on;
%%
%% Double-axis plot
% Data: Price of Copper and Steel (2000-2020)
clc; clear all;
year=2000:5:2020;
copper_price=[1813 3679 7535 5631 5786];
steel_price=[296 633 716 543 491];
colororder({'k','b'})
yyaxis left
plot(year,copper_price,'k-o','linewidth',1.5);
xlim([2000 2020]);
ylim([0 8000]);
xlabel('Year');
ylabel('Copper Price ($/Tonne)');
hold on
yyaxis right
plot(year,steel_price,'b-o','linewidth',1.5);
ylim([200 1000]);
ylabel('Steel Price ($/Tonne)');
legend({'Copper Price','Steel Price'},'Location','Northwest');
title('Price of Copper and Steel (2000-2020)')
grid on




