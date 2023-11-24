m = 5
k = 30
b = 25
A = [0 1; -k/m -b/m]
B = [0; 1/m]
C = [1 0]
D = 0

sys = ss(A, B, C, D)

polosreg = [-5 -7]
kreg = place(A,B, polosreg)

%------------------------------------------------

syms k1 k2 h

k2 = [k1, k2]

An = [A-B*k2 B*h; -C 0]

autoval = eig(An)
autoval = [autoval(1) == -5; autoval(2) == -7; autoval(3) == -9]

kras = solve(autoval(1), autoval(2), autoval(3))
h = double(kras.h(1))
k1 = double(kras.k1(1))
k2 = double(kras.k2(1))

%------------------------------------------------
