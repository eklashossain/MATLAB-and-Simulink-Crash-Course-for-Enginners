% Variable definiton of different data types
clc;clear;
% Numeric data types: Integer, Float, Logical
var1 = int8(2);            % Integer of signed 8-bit 
var2 = 10.5;               % Float: Double
var3 = true;              % Logical
% Character and string type: Character, String, Cell array
var4 = 'MATLAB';          % Character
var5 = ["E","Hossain"];     % String
var6 = {'E','Hossain'};    % Cell array
% Date and time
var7 = datetime('13/05/2021','InputFormat','dd/MM/yyyy');
fprintf('var1 =');  disp(var1)
fprintf('var2 =');  disp(var2)
fprintf('var3 =');  disp(var3)
fprintf('var4 = '); disp(var4)
fprintf('var5 =');  disp(var5)
fprintf('var6 =');  disp(var6)
fprintf('var7 =');  disp(var7)
whos
diary('VariableDefinition.txt')

