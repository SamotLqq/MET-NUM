exec("metodoPotencia.sce","errcatch",0)

A = [12 1 3 4;1 -3 1 5; 3 1 6 -2; 4 5 -2 -1]
disp(spec(A))
z0 = [1,1,1,1]'
tol = 10^-6
[av, v] = metodoPotencia(A, z0, tol)
disp("El autovalor calculado por metodoPotencia es: ")
disp(av)
disp("El autovector calculado por metodoPotencia es: ")
disp(v)
