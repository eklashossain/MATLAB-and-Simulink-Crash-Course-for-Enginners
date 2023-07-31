% Conversion of data types
clear;clc;
% Number to text
var1 = int8(5);              % Integer
var1_conv = int2str(var1);   % Conversion into character

var2 = 2;                    % Double
var2_conv = num2str(var2);   % Conversion into character

var3 = 2.5;                  % Double
var3_conv = char(var3);      % Conversion into character

var4 = 3;                    % Double
var4_conv = string(var4);    % Conversion into string
fprintf('Number to text conversion:\n');
fprintf('--------------------------------\n');
whos

% Text to number
clear;
var5 = '3.1416';             % Character
var5_conv = str2num(var5);   % Conversion into double

var6 = "10";                 % String
var6_conv = str2double(var6); % Conversion into double
fprintf('\nText to number conversion:\n');
fprintf('--------------------------------\n');
whos