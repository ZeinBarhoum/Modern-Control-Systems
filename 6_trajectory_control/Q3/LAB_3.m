K = diag([1,1,1,10,10,10]);
K_phi = diag([1,1,1]);
k_w = 3;

n_init = [0,1,0];
n_des = 1/sqrt(3)* [1,1,1];
rot_init = axang2rotm([n_init / norm(n_init) , norm(n_init)]);
rot_des = axang2rotm([n_des / norm(n_des) , norm(n_des)]);

m = 2.3;
J = 1.7;
pos_init = [-10;-4;10];
ds_des = 1;

out = sim("Lab5_3.slx");
x = out.simout.Data(:,1);
y = out.simout.Data(:,2);
z = out.simout.Data(:,3);
plot3(x,y,z)
xlabel('x');
ylabel('y');
zlabel('z');

% xlim([-100,100])
% ylim([-100,100])
axis equal