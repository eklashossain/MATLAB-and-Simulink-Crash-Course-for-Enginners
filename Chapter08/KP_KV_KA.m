% Transfer eqn: 20(s+2)/(s^3+10*s+11)
% Position error coefficient: K_a
syms s t
G=@(s) 20*(s+2)/((s+3)*(s+2)*s);
H=1;
K_p=limit(H*G(s),s,0,'right');
fprintf('Position error coefficient: %f\n',K_p)

% Velocity error coefficient: K_v
K_v=limit(s*H*G(s),s,0);
fprintf('Velocity error coefficient: %f\n',K_v)

% Acceleration error coefficient: K_a
K_a=limit(s^2*H*G(s),s,0);
fprintf('Velocity error coefficient: %f\n',K_a)

% Steady-state error
r=@(t) 1+5*t;
R(s)=laplace(r(t));
E=(s*R(s))/(1+H*G(s));
Ess=limit(E,s,0,'right');
fprintf('Steady-state error: %f\n',Ess)