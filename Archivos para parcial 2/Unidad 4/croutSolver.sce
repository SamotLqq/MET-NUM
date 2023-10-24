exec("croutCalc.sce", "errcatch", 0);
exec("../E1P4/Lsolver.sce", "errcatch", 0);
exec("../E1P4/Usolver.sce", "errcatch", 0);

function [x] = crout_solver(A, b)
    [L,U] = crout_calc(A)
    dimA = size(A,2)
    dimB = size(b)
    if  dimA <> dimB then
        error("crout solver - las dimensiones de A y b son incompatibles")
        abort;
    end
    // resolver Ax = b es lo mismo que resolver LUx = b, resolveremos el sistema Lc = b y luego el sistema Ux = c para obtener x
    c = l_solver(L, b)
    x = u_solver(U, c)
endfunction
/*
// ejemplo
A = [1 20 110;10 100 100; 1 11 30]
b = [131 210 42]'
//x1 + 20x2 + 110x3 = 131 -> x1 = 1
//10x1 + 100x2 + 100x3 = 210 -> x2 = 1
//110x1 + 100x2 + 30x3 = 240 -> x3 = 1
// x esperado: 1 1 1
x = crout_solver(A,b)
disp(x)
disp(A*x)
*/
