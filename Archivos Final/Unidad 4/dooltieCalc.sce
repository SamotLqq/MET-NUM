funcprot(0)

// obtenemos la factorizacion LU dada por
// crout

function [L,U] = dooltie_calc(A)
    [nA, mA] = size(A)
    if (nA <> mA) then
        error("dooltie calc - la matriz A debe ser cuadrada")
        abort;
    end
    n = nA // dimension de la matriz
    L = eye(n, n)
    U = zeros(n, n)
    for d=1:n 
        for j=d:n // calculamos fila d-esima de u entera (usando que es U)
            U(d,j) = A(d,j)
            if (1 <= d-1) then
                U(d,j) = U(d,j) - L(d,1:d-1)*U(1:d-1,j)
            end
        end
        for i=d+1:n
            L(i,d) = A(i,d)
            if (1 <= d-1) then
                L(i,d) = (L(i,d) - L(i,1:d-1)*U(1:d-1,d))/U(d,d)
            else
                L(i,d) = L(i,d)/U(d,d)
            end
        end
    end
endfunction

// ejemplo de uso con visualizacion de resultados
/*
A = [5 5 5 3 5;1 2 3 4 5;1 1 5 2 2;1 0 0 0 5; 0 0 0 2 2]
[L,U] = dooltie_calc(A)

disp(L)
disp(U)
disp(L*U)
disp(A)
*/
