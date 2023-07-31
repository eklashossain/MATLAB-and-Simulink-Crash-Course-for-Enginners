% Gauss-seidel method
% Set of eqautions:
% F1(x,y,z)= 80x+10y-2z==85
% F2(x,y,z)= 5x+50y+12z==112
% F3(x,y,z)= 4x+9y+30z==68
% Stopping criteria: Tolerance for (x,y,z)< 0.0000 1
clc;clear
fx=@(x,y,z) (1/80).*(85-10*y+2*z);
fy=@(x,y,z) (1/50).*(112-5*x-12*z);
fz=@(x,y,z) (1/30).*(68-4*x-9*y);
xo=0; yo=0; zo=0;
N=100;
for j=1:N
    x=fx(xo,yo,zo);
    y=fy(x,yo,zo);
    z=fz(x,y,zo);
    tol_x=abs(x-xo)/xo;
    tol_y=abs(y-yo)/yo;
    tol_z=abs(z-zo)/zo;
    fprintf('x:%.5f Tol_x: %.5f y: %.5f Tol_y: %.5f z: %.5f Tol_z: %.5f \n',...
                              x,tol_x,y,tol_y,z,tol_z);
    xo=x; yo=y; zo=z;
    % Stopping criteria
    if (tol_x<0.00001 && tol_y<0.00001 && tol_z<0.00001)
        break;
    end
end
fprintf('The solution after %dth iteration:\n',j);
fprintf('x: %f  y: %f  z: %.5f \n',x,y,z);