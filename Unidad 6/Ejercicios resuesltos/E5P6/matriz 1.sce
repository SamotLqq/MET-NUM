exec("metodoPotencia.sce", "errcatch", 0)

A = [6 4 4 1;4 6 1 4; 4 1 6 4; 1 4 4 6]
disp(spec(A))
z0 = [1,1,1,2]'
tol = 10^-6
[av, v] = metodoPotencia(A, z0, tol)
disp("El autovalor calculado por metodoPotencia es: ")
disp(av)
disp("El autovector calculado por metodoPotencia es: ")
disp(v)
