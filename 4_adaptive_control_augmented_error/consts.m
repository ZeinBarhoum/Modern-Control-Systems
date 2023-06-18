clear;
clc;

%plant parameters 
a0 = 0; a1 = 0;
b0 = 1; b1 = 0;

k0 = 1;

km2 = 1;
km1 = 2;
km0 = 1;

LAM = [-k0];
e = [1];

gamma = 0.5;

y0 = 5;
dy0 = 0;

g = 1;