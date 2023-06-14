clear;
clc;
tT = 0.2;
ov = 0;
w0 = 5.83/tT;
am0 = w0^2;
am1 = 2*w0;

Am = [0,1;-am0,-am1];
bm = [0;am0];
cm = [1,0];

b0 = 1;
a0= -10;
a1 = -1;
A = [0,1;-a0,-a1];
b = [0;b0];
c = [1,0];

theta1 = (-am0+a0)/b0;
theta2 = (-am1+a1)/b0;

theta = [theta1,theta2]';
k = b0/am0;


%% system actual parameters 

a0_sys = a0;
a1_sys = a1;

b0_sys = b0;
A_sys = [0,1;-a0_sys,-a1_sys];
b_sys = [0;b0_sys];

Theta = [(-am0+a0_sys)/b0; (-am1+a1_sys)/b0];
%%
Q = [1600,800; 800, 500];

syms P [2,2]

sol = solve(Am.'*P+P*Am==-Q, P);
P = [double(sol.P1_1), double(sol.P1_2);
    double(sol.P2_1), double(sol.P2_2)];

%% robust parameters 

lambda = 500;
sigma = 0.01;
% lambda = 500;