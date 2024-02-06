exec('GaussElimV2.sce', 'errcatch', 0)

// i
A = [1 1 0 3;2 1 -1 1;3 -1 -1 2;-1 2 3 -1]
b = [4 1 -3 4]'

[x,a] = gausselim(A,b)

disp(x)
disp(a)

// ii (en el primer paso el elemento A(2,2) = 0 y como no hay pivoteo se realizan divisiones por 0 por lo que el programa no funciona en este caso)
A = [1 -1 2 -1; 2 -2 3 -3; 1 1 1 0; 1 -1 4 3]
b = [-8 -20 -2 4]'

[x,a] = gausselim(A,b)

disp(x)
disp(a)

// iii

A = [1 1 0 4; 2 1 -1 1; 4 -1 -2 2; 3 -1 -1 2]
b = [2 1 0 -3]'

[x,a] = gausselim(A,b)

disp(x)
disp(a)
