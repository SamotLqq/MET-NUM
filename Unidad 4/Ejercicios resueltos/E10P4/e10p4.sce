exec("dooltieSolver.sce", "errcatch", 0)

A = [1 2 3 4; 1 4 9 16; 1 8 27 64; 1 16 81 256]
b = [2 10 44 190]'

x = dooltie_solver(A, b)

disp("La solucion es:")
disp(x)
disp("Verificación")
disp(A*x)
