// obtenemos la factorizacion LU dada por crout

function [L,U] = crout_calc(A)
    [nA, mA] = size(A)
    if (nA <> mA) then
        error("crout calc - la matriz A debe ser cuadrada")
        abort;
    end
    n = nA // dimension de la matriz
    L = zeros(n, n)
    U = eye(n, n)
    for d=1:n 
        for i=d:n
            L(i,d) = A(i,d)
            if (1 <= d-1) then
                L(i,d) = L(i,d) - L(i,1:d-1)*U(1:d-1,d)
            end
        end
        for j=d+1:n // calculamos fila d-esima de u entera (usando que es U)
            U(d,j) = A(d,j)
            if (1 <= d-1) then
                U(d,j) = (U(d,j) - L(d,1:d-1)*U(1:d-1,j))/L(d,d)
            else
                U(d,j) = U(d,j)/L(d,d)
            end
        end
        
    end
endfunction
/*
// ejemplo de uso y visualizacion de resultados.
A = [1 20 110 43 43;12 13 10 100 100;1 43 54 11 30; 1 1 1 0 0; 0 0 1 1 1]
[L,U] = crout_calc(A)

disp(L)
disp(U)
disp(L*U)
disp(A)
*/
