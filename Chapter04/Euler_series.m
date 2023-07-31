function  Sol=Euler_series(f,L,U,N,y1)
% Input parameters:
% f: A function that provides the differfential equation
% L: Lower limit of x
% U: Upper limit of x
% N: Number of steps
% y1: Initial value of y
% Output Parameters:
% Sol: [x,y]; x: abscissas; y: ordinate

% Consider the step size, h

h=(U-L)/N;
y=zeros(N+1,1);
x=zeros(N+1,1);
x(1)=L;
y(1)=y1;
for i=1:N
    y(i+1)=y(i)+h*f(x(i),y(i));
    x(i+1)=x(1)+ i*h;
end
plot(x,y,'*');
grid on;
xlabel('x');
ylabel('y');
title('Differential equation: dy/dx=2x^2+y-2;0<=x<=5;y(0)=0.1');
Sol=[x,y];
end