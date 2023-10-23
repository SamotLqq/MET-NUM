A = [1 1; 1 1]
/*
A - lam*I
1-lam 1
1 1-lam

p(lam) = (1-lam)^2 - 1
0 y 2 av
*/
// calculamos autovalores (av) con spec
av = spec(A);
disp(av)
