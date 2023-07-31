% Pie plot
% Data: Electricity consumption by different sectors in USA (2018)
x = [35.4,25.9,2,38.5];
subplot(1,2,1);
pie(x);
title('Without explode feature')
subplot(1,2,2);
explode=[1,1,1,1];
pie(x,explode);
title('With explode feature')
labels = {'Commercial','Industrial','Transportation','Residential'};
legend(labels,'Location','best');

%% 3D pie plot
% Data: Electricity consumption by different sectors in USA (2018)
clc;clear;
x = [35.4,25.9,2,38.5];
explode=[0,0,1,0];
pie3(x,explode);
title('Electricity consumption by different sectors in USA (2018)')
labels = {'Commercial','Industrial','Transportation','Residential'};
legend(labels,'Location','best');
