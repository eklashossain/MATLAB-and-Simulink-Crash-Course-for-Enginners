function [C,C_EQ]=nonLin_Constraint(x)
% Non-linear constraints
% Non-linear ineqaulity condition:
% 99*1000 Wh <=dischage_cell*x(1)*x(2)*cell_mod<= 101*1000 Wh
% Here, discharge_mod = 90 W; cell_mod=4
dischage_cell=90; cell_mod=4;
C=[dischage_cell*x(1)*x(2)*cell_mod-101*1000; ...
    -dischage_cell*x(1)*x(2)*cell_mod+99*1000];
C_EQ=[];
end