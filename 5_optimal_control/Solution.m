syms t real positive
syms f1(t) f2(t) x1(t) x2(t)
A = [1,-1,0,0;
    -1,0,0,0;
     2,1,-1,1;
     1,0.5,1,0];

odes = [diff(f1);diff(f2);diff(x1);diff(x2)] == A * [f1;f2;x1;x2];

conds = [f1(0);x2(0);x1(pi);x2(pi)] == [0;0;1;0];

[f1s(t),f2s(t),x1s(t),x2s(t)] = dsolve(odes,conds);

u(t) = simplify((f1s + 0.5*f2s));
matlabFunction(u);
%%

A = [-1,1;1,0];
B = [2;1];
Q = [3,0;0,5];
R = 2;

[K,P,poles] = lqr(A,B,Q,R);

cond = A.'*P+P*A+Q -P*B*(R^-1)*B'*P ==0;
assert(cond(1) ==0)
assert(cond(2) ==0)
assert(cond(3) ==0)
assert(cond(4) ==0)