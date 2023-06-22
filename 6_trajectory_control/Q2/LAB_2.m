m = 2.3;
J = 1.7;

pos_init = [-10;-4;10];
n_init = [0,1,0];
n_des = 1/sqrt(3)* [1,1,1];
rot_init = axang2rotm([n_init / norm(n_init) , norm(n_init)]);
rot_des = axang2rotm([n_des / norm(n_des) , norm(n_des)]);

ds_des = 5;

ks = 50;
k1e1 = 1;
k2e1 = 10;
k1e2 = 1;
k2e2 = 10;

kr = 50;
kw = 20;

out = sim("Lab5_2.slx");
x = out.simout.Data(:,1);
y = out.simout.Data(:,2);
z = out.simout.Data(:,3);
plot3(x,y,z)
xlabel('x');
ylabel('y');
zlabel('z');
axis equal