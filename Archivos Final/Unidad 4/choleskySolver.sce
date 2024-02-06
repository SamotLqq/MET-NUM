exec("Cholesky V2.sce", "errcatch", 0);
exec("Lsolver.sce", "errcatch", 0);
exec("Usolver.sce", "errcatch", 0);

// resuelve sist de ecuacion lineal mediante 
// factorizacion LU obtenida por dooltie
function [x] = cholesky_solver(A, b)
    [U] = cholesky(A)
    [nA, mA] = size(A)
    dimB = size(b)
    if  nA <> mA then
        error("cholesky solver - A debe ser cuadrada")
        abort;
    elseif dimB <> mA then
        error("cholesky solver - las dimensiones de A y b son incompatibles")
        abort;
    end
    // resolver Ax = b es lo mismo que resolver U'Ux = b, resolveremos el sistema U'c = b y luego el sistema Ux = c para obtener x
    disp(U)
    disp(U')
    disp(U'*U)
    c = l_solver2(U', b)
    x = u_solver2(U, c)
endfunction
/*
// ejemplo de uso y visualizacion de resultados.
A = [10, -1, 0, 0; -1, 11, -1, 0; 0, -1, 12, -1; 0, 0, -1, 13];
b = [1,2,3,4]'

x = cholesky_solver(A,b)
disp(x)
disp(A*x)
*/
