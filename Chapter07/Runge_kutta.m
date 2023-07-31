% Runge-kutta method
% Differential equation dy/dx= (x+2*y)*cos(y)
% Conditions: 0<=x<=2; y(0)=5; Step size,h=0.2
% Solve for y
clc;clear;
F=@(x,y) (x+2*y)*cos(y);
h = 0.2;
x0 = 0;
y0 = 5;
xn = 2;
N=length(x0:h:xn);
for j=1:N-1
    k1=h*F(x0,y0);
    k2=h*F(x0+0.5*h,y0+0.5*k1);
    k3=h*F(x0+0.5*h,y0+0.5*k2);
    k4=h*F(x0+h,y0+k3);
    y(j)=y0+(1/6)*(k1+2*k2+2*k3+k4);
    x0=x0+h;
    y0=y(j);
end
x=0.2:h:xn;
plot(x,y,'o-b','LineWidth',1.5);
xlabel('x');
ylabel('y');
title('Runge-kutta method')
grid on;
fprintf('The final solution for x = 2 is: %.5f\n',y(j));

