% Non-linear constraints
% x(1)^2 + x(2)^2 + x(3)^2 = 12;
% x(1)*x(2) + x(2)*x(3) <= 30;
function [C,C_EQ]=nonlinear_constraint(x)
C=x(1)*x(2) + x(2)*x(3)-30;
C_EQ=x(1)^2 + x(2)^2 + x(3)^2 - 12;
end