clc;clear;
%INPUT: 
% Data, X: r x c matrix,
% row: number of examples or data
% col: Features for each examples
I=[2 5 2 4;5 2.5 5 2;1 2 1.5 3];
Feature={'Power density','Energy density','Life cycle','Safety'};
line_color=['r','g','b'];
Legend={'Li-ion','Super capacitor','NaS'};
Title={'Comparison of different battery types'};
row=size(I,1);  
col=size(I,2);
Feature_num=size(Feature,2);
I=[I I(:,1)];
theta= 2*pi/col*[1:col+1] + pi/col;
R=ones(1,size(I,1));
[x,y]=pol2cart(theta,I);
P=plot(y',x','LineWidth',1.5);
L=legend(Legend,'Location','eastoutside');
title(Title);
for i=1:row
    set(P(i),'Color',line_color(i));
end
I_max=max(max(I));
axis_max=I_max*1.1;
axis([-axis_max axis_max -axis_max axis_max]);
axis equal
axis off
if Feature_num>0
    R_axis=linspace(0,I_max,Feature_num);
    for k=1:Feature_num
        text(R_axis(k)*sin(pi/col-0.3),R_axis(k)*cos(pi/col-0.3),num2str(R_axis(k),2),...
                                          'FontSize',10)
    end
    [R,R_axis]=meshgrid(ones(1,col),R_axis);
    R_axis=[R_axis R_axis(:,1)];
    theta_axis=(2*pi/col)*[1:col+1]+(pi/col);
    R=ones(1,size(R_axis,1));
    [y_axis,x_axis]=pol2cart(theta_axis,R_axis);
    hold on
    B=plot(x_axis,y_axis,':k');
    for i = 1:length(B)
        set(get(get(B(i),'Annotation'),'LegendInformation'),'IconDisplayStyle','off'); 
    end
    C=plot(x_axis',y_axis',':k');
    for i = 1:length(C)
        set(get(get(C(i),'Annotation'),'LegendInformation'),'IconDisplayStyle','off'); 
    end
end
if length(Feature)>=col
        theta_feature=2*pi/col*[1:col]+pi/col;
        R_feature=axis_max;
        [y_feature,x_feature]=pol2cart(theta_feature,R_feature);
        for k=1:col
            if ~sum(strcmpi({'' },Feature(k)))
                text(x_feature(k), y_feature(k),cell2mat(Feature(k)), 'FontSize',12,'HorizontalAlignment','center')
            end
        end
 end


