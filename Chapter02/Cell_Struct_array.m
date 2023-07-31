% Cell array
clear;clc;
A = cell(2,3);
A(1,:)={3,4,4};
A(2,:)={'A','B','C'};
fprintf('Cell array, A:\n')
disp(A)
%% Structure array
clear;clc;
Field1='Battery_Name';
val_Field1 = {'Li-ion','Liquid super capacitor','Lead acid'};
Field2='Energy_Density';
val_Field2 = {5,2.5,2};
Field3='Life_cycle';
val_Field3 = [2,5,1.5];
Field4='safety';
val_Field4 = {'High','Low','Moderate'};
fprintf('Sturcture array of different battery types and properties:\n')
S = struct(Field1,val_Field1,Field2,val_Field2,Field3,...
                   val_Field3,Field4,val_Field4)
fprintf('Accessing first field of the structure:\n\n');
disp(S(1))
fprintf('Accessing second field of the structure:\n\n');
disp(S(2))
fprintf('Accessing third field of the structure:\n\n');
disp(S(3))