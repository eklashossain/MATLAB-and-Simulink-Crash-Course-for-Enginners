% Equivalent resistance
% R1 + (R2||R3)
R1=10; R2=5; R3=4;
Equivalent_R= R1 + ((R2*R3)/(R2+R3));
fprintf('Equivalent resistance: %f\n',Equivalent_R);