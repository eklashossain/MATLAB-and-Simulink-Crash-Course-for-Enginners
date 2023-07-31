%Addition
A=[1 2;3 4];
B=[3 4;1 2];
Add=A+B
%% Subtraction
A=[1 2;3 4];
B=[3 4;1 2];
Sub=A-B
%% Multiplication
A=[1 2;3 4];
B=[3 4;1 2];
Mul=A*B
%% if statement
clc;
x=randi(20,1);
disp(['The value of x:', num2str(x)])
%fprintf('The value of x: %d',x)
if (x>10)
    disp('x is greater than 10')
end 
%% if statement
clc;
x=randi(100,1);
disp(['The value of x:', num2str(x)])
%fprintf('The value of x: %d',x)
if (x>=80)
    disp('Grade: A')
elseif (x>=60 && x<80)
    disp('Grade: B')
elseif (x>=40 && x<60)
    disp('Grade: C')
else
    disp('Grade: F')
end
%%
clc;
x=input('Enter a Month:','s');
switch x
    case 'January'
        disp(['Number of Days in ',x,':31'])
    case 'February'
        disp(['Number of Days in ',x,':28'])
    case 'March'
        disp(['Number of Days in ',x,':31'])
    case 'April'
        disp(['Number of Days in ',x,':30'])
    case 'May'
        disp(['Number of Days in ',x,':31'])
    case 'June'
        disp(['Number of Days in ',x,':30'])
    case 'July'
        disp(['Number of Days in ',x,':31'])
    case 'August'
        disp(['Number of Days in ',x,':31'])
    case 'September'
        disp(['Number of Days in ',x,':30'])
    case 'October'
        disp(['Number of Days in ',x,':31'])
    case 'November'
        disp(['Number of Days in ',x,':30'])
    case 'December'
        disp(['Number of Days in ',x,':31'])
    otherwise
        disp('Enter a Correct Name of Month')
end


