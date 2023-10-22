exec("../E1P5/jacobi.sce", "errcatch", 0)

A = [10 1 2 3 4;1 9 -1 2 -3;2 -1 7 3 -5;3 2 3 12 -1;4 -3 -5 -1 15]
b = [12 -27 14 -17 12]

x0 = [0 0 0 0 0]
tol = 10^-6

x = jacobi(A, b, x0, tol)

disp("La solucion es x =  ")
disp(x)
disp("Y verifica Ax = ")
disp(A*x')

// realiza 67 iteraciones, ie, x = x^67
