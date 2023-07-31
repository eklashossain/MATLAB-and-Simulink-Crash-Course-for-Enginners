% Characteristic polynomial
% C(s)= s^3+2s^2+10s^2+15
% Input: coeff = Vector of coefficients of the C(s); e.g., [1 2 10 15]

clc;clear;
coeff=input('Enter the coefficients:')
L=length(coeff);
if (rem(L,2)==0)
    Routh_array=zeros(L,L/2);
    for i=1:L/2
        Routh_array(1,i)=coeff(1,2*i-1);
        Routh_array(2,i)=coeff(1,2*i);
    end
else
    Routh_array=zeros(L,(L+1)/2);
    for i=1:(L+1)/2
        Routh_array(1,i)=coeff(1,2*i-1);
        if i==(L+1)/2
            break;
        end
        Routh_array(2,i)=coeff(1,2*i);
    end
end

for i=3:size(Routh_array,1)
    if Routh_array(i-1,1)==0
        Routh_array(i-1,1)=0.001;
    end
    for j=1:size(Routh_array,2)-1
        Routh_array(i,j)=(-1/Routh_array(i-1,1))*det([Routh_array(i-2,1) ...
           Routh_array(i-2,j+1);Routh_array(i-1,1) Routh_array(i-1,j+1)]);         
    end
end
Routh_array
S=sign(Routh_array);
count=0;
for i=1:L
    if S(i,1)==1
        count=count+1;
    end
end
if count==L
    disp('The system is stable')
else
    disp('THe system is unstable')
end
% Verify
fprintf('\n');
disp('Verification:')
Roots=roots(coeff);
disp('Poles:')
disp(Roots)
   

