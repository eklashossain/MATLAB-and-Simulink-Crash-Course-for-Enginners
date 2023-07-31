% Newton raphson method
% Find the root of 2*x+sin(x)-2
% Stopping criteria: Tolerance < 0.00001
clc;clear;
F=@(x) 2*x+sin(x)-2;
syms x
% Derivative
dF(x)=diff(F(x));
a=0; 
b=2;
xo=mean([a b]);
N=100;
 for i=1:N
     x=xo-(F(xo)/dF(xo));
     tol=abs(x-xo)/xo;
     fprintf('x: %.5f  Tolerance: %.5f \n',x,tol);
     xo=x;
     %Stopping criteria
     if (tol<0.00001)
         break;
     end
 end
fprintf('Root of the equation after %dth iteration: %.5f\n',i,x);

