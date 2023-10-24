exec("../E2P4/GaussElimV2.sce",'errcatch', 0)

// ejercicio 4

function determinante = calcular_determinante(A)
    dimension = size(A,1)
    [x,a] = gausselim(A,zeros(1,dimension)') // se puede optimizar la cantidad de operaciones haciendo una funcion que solo haga operaciones por filas en A y no en A_aum
    diagonal_U = diag(a(:, 1:dimension))
    determinante = prod(diagonal_U)
endfunction

// ejemplos

A = [1 1 0 3;2 1 -1 1;3 -1 -1 2;-1 2 3 -1]//39 (matriz E2bi)
//A = [1 -1 2 -1; 2 -2 3 -3; 1 1 1 0; 1 -1 4 3]//error (matriz E2bii) (piv 0) 
//A = [1 1 0 4; 2 1 -1 1; 4 -1 -2 2; 3 -1 -1 2]//9 (matriz E2biii)

determinante_A = calcular_determinante(A)
disp(determinante_A)




