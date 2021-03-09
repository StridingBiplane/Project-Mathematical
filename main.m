%% Define Problem


beta = 2;
gamma = 1.4;

x0 = [0.9,0.0002,0.0998];

fsir = @(t,x) SIR(x,beta,gamma);
    
%% Solve the ODE

t0 = 0;
tf = 10;
dt = 1;
tspan = t0:dt:tf;
n=numel(tspan);

x = RK4(fsir , x0, t0, tf, dt)

%% DBSSM

%% First step
% Visualize the dirtichlet distribution




