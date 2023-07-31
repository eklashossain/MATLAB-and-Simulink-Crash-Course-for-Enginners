% Inverting amplifier
% Input voltage: V_in=40 V;
% Resistances: R1=4 Ohms; R2=2 Ohms;
% Find: Output voltage, V_out
% Find: Gain, G
clc; clear;
V_in=40; R1=4; R2=2;
V_out=-(R2/R1)*V_in;
G=V_out/V_in;
fprintf('Output voltage: %.2f V\n',V_out);
fprintf('Gain: %.2f\n',G);
%%
% Non-inverting amplifier
% Input voltage: V_in=40 V;
% Resistances: R1=4 Ohms; R2=2 Ohms;
% Find: Output voltage, V_out
% Find: Gain, G
clc; clear;
V_in=40; R1=4; R2=2;
V_out=(1+(R2/R1))*V_in;
G=V_out/V_in;
fprintf('Output voltage: %.2f V\n',V_out);
fprintf('Gain: %.2f\n',G);
%%
% Follower circuit
% Input voltage: V_in=20 V;
% Resistances: R1=4 Ohms; R2=8 Ohms;
% Find: Output of the inverting amplifier, V1
% Find: Final output voltage, V_out
clc; clear;
V_in=20; R1=4; R2=8;
V1=-(R2/R1)*V_in;
fprintf('V1: %.2f V\n',V1);
V_out=V1;
fprintf('Final output voltage, V_out: %.2f V\n',V_out);
%%
% Differentiator circuit
% R= 5 Ohms, C= 0.5 F
% Input signal, v(t)=2sin(t);
% Find: Output signal, v_out(t)
% Find: Output at t= 0.1 sec.
% FInd: I_R and I_C at t= 0.1 sec.
clc; clear;
R=5; C=0.5;
syms t
v= @(t) 2*sin(t);
v_out=@(t) -R*C*diff(v,t);
fprintf('The output signal:\n');
disp(v_out(t))
v_out= limit(v_out,t,0.1);
fprintf('The output voltage at t=0.1 sec: %.5f V\n',v_out);
I_R= -v_out/R;
I_C= limit(C*diff(v,t),t,0.1);
fprintf('\n');
fprintf('I_R at t=0.1 sec: %.5f A\n',I_R);
fprintf('\n');
fprintf('I_C at t=0.1 sec: %.5f A\n',I_C);
%%
% Integrator circuit
% R= 5 Ohms, C= 0.5 F
% Input signal, v(t)=-5cos(t);
% Find: Output signal, v_out(t)
% Find: Output at t= 0.1 sec.
% FInd: I_R and I_C at t= 0.1 sec.
clc; clear;
R=5; C=0.5;
syms t
v= @(t) -5*cos(t);
v_out=@(t) (-1/R*C)*int(v,t);
fprintf('The output signal:\n');
disp(v_out(t))
v_out= limit(v_out,t,0.1);
fprintf('The output voltage at t=0.1 sec: %.5f V\n',v_out);
I_R= -v_out/R;
I_C= limit(C*diff(v,t),t,0.1);
fprintf('\n');
fprintf('I_R at t=0.1 sec: %.5f A\n',I_R);
fprintf('\n');
fprintf('I_C at t=0.1 sec: %.5f A\n',I_C);


