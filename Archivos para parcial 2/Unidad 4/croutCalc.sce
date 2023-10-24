funcprot(0)

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
        for i=d:n // abajo y diagonal 
            sumaid = 0
            for k=1:d-1 // porque si k>j -> u(k,j) = 0
                sumaid = sumaid + L(i,k)*U(k,d)
            end
            L(i,d) = A(i,d) - sumaid 
        end
        for j=d+1:n // derecha diagonal
            sumadj = 0
            for k=1:d-1 // porque si k>=j -> k > i -> L(i,k) = 0
                sumadj = sumadj + L(d,k)*U(k,j)
            end
            U(d,j) = (A(d,j) - sumadj)/L(d,d)
        end
    end
endfunction
/*
// ejemplo
A = [1 20 110;10 100 100;1 11 30]
[L,U] = dooltie_calc(A)

disp(L)
disp(U)
disp(L*U)
*/
