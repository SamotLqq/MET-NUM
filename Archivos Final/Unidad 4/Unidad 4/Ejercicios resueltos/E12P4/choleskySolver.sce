exec("../E11P4/Cholesky V2.sce", "errcatch", 0);
exec("../E1P4/Lsolver.sce", "errcatch", 0);
exec("../E1P4/Usolver.sce", "errcatch", 0);

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
    c = l_solver(U', b)
    x = u_solver(U, c)
endfunction
