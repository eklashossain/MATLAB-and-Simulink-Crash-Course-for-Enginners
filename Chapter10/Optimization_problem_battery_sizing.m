% Li-ion battery sizing
% Decision variables: 
% Number of rows, x(1); Number of columns, x(2);
% Objective function: 
% Minimize obj = x(1)*x(2)
% Subject to:
% 99*1000 Wh <=dischage_cell*x(1)*x(2)*cell_mod<= 101*1000 Wh;
% 150 V <=vol_mod*x(2)<= 400 V
% Here, discharge_cell = 90 W; cell_mod = 4;vol_mod = 12 V;
clc;clear;
obj=@(x) x(1)*x(2);
discharge_cell = 90;
cell_mod=4;
vol_mod = 12;
x_low = [4,150/(vol_mod)];
x_up = [14,400/(vol_mod)];
A=[];
B=[];
A_EQ=[];
B_EQ=[];
xo=[4,14];
nonLinear_Constraint=@nonLin_Constraint;
[x,value]=fmincon(obj,xo,A,B,A_EQ,B_EQ,x_low,x_up,nonLinear_Constraint);
fprintf('Battery size:\n');
fprintf('Row = %d  Column = %d\n',round(x(1)),round(x(2)));
fprintf('Size = %d x %d = %d\n', round(x(1)),round(x(2)),round(value));

