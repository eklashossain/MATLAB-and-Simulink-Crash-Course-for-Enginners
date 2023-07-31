objective = @(x) x(1)*x(4)*(x(1)+x(2)+x(3))+x(3);

% initial guess
x0 = [1,5,5,1];

% variable bounds
lb = 1.0 * ones(4);
ub = 5.0 * ones(4);

% show initial objective
disp(['Initial Objective: ' num2str(objective(x0))])

% linear constraints
A = [];
b = [];
Aeq = [];
beq = [];

% nonlinear constraints
nonlincon = @nlcon;

% optimize with fmincon

x = fmincon(objective,x0,A,b,Aeq,beq,lb,ub,nonlincon);

% show final objective
disp(['Final Objective: ' num2str(objective(x))])

% print solution
disp('Solution')
disp(['x1 = ' num2str(x(1))])
disp(['x2 = ' num2str(x(2))])
disp(['x3 = ' num2str(x(3))])
disp(['x4 = ' num2str(x(4))])