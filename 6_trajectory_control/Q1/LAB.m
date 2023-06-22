out = sim('LAB5.slx');

x = reshape(out.simout.x.Data, [], 1);
y = reshape(out.simout.y.Data, [], 1);
e = reshape(out.simout.e.Data, [], 1);
t = reshape(out.simout.t.Data, [], 1);

r1 = sqrt(6.25);
x0_1 = -7;
y0_1 = -5;

r2 = 6;
x0_2 = 10;
y0_2 = 10;

theta = 0:0.01:2*pi;
x_c1 = r1 * cos(theta) + x0_1;
y_c1 = r1 * sin(theta) + y0_1;

x_c2 = r2 * cos(theta) + x0_2;
y_c2 = r2 * sin(theta) + y0_2;

x_line = -5:0.01:20;
y_line = tan(pi/3)*x_line - 1.4/(cos(pi/3));

plot(x,y, x_c1, y_c1,'--',x_c2, y_c2,'--', x_line, y_line,'--','LineWidth',2);
xlabel('x')
ylabel('y')
legend('Robot Trajectory', 'Traj1', 'Traj2', 'Traj3')
axis equal

figure;
plot(t,e)
xlabel('t')
ylabel('e')
legend('Error')