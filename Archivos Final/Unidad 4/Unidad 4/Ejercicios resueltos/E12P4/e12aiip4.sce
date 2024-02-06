exec("choleskySolver.sce", "errcatch", 0);
exec("../E11P4/Cholesky V2.sce","errcatch", 0);
A = [16 -12 8; -12 18 -6; 8 -6 8]
b = [76 -66 46]'

U = cholesky(A)
disp("U =")
disp(U)
x = cholesky_solver(A,b)

// resultado
disp("x =")
disp(x)
// chequeo
disp("Ax =")
disp(A*x)
