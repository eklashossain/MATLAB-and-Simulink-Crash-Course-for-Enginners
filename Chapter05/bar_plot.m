% Bar plot
% Data: Global CO2 emission (2010-2020)
year=2010:1:2020;
CO2=[30.5824 31.4595 31.806 32.3707 32.3886 32.3655 ...
     32.3747 32.8374 33.5133 36.4568 34.0752];
bar(year,CO2,'b');
ylim([20 40]);
xlabel('Years');
ylabel('CO2 emission (Gt)')
title('Global CO2 Emission (2010-2020)')
grid on;

%%
% Horizontal bar plot 
% Data: Electricity consumption by household entities in USA 
clc;clear all;
X = categorical({'Refrigeration','Water Heating','Lighting','Air Conditioning','Other'});
X = reordercats(X,{'Refrigeration','Water Heating','Lighting','Air Conditioning','Other'});
Y = [879 1056 1628 2545 2127];
C=barh(X,Y);
C.FaceColor = 'flat';
C.CData(1,:)=[0 1 1];
C.CData(2,:)=[0 0 1];
C.CData(3,:)=[0 0.4470 0.7410];
C.CData(4,:)=[0 1 0];
C.CData(5,:)=[0.4660 0.6740 0.1880];
xlabel('KWh / Household');
title('Electricity consumption by household entities in USA')
grid on
%%
% Bar plot
% Data: Global CO2 emission (2010-2020)
year=2010:1:2020;
CO2=[30.5824 31.4595 31.806 32.3707 32.3886 32.3655 ...
     32.3747 32.8374 33.5133 36.4568 34.0752];
bar3(year,CO2,'b');
ylim([20 40]);
xlabel('Years');
ylabel('CO2 emission (Gt)')
title('Global CO2 Emission (2010-2020)')
grid on;
