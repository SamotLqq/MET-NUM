funcprot(0)

// obtenemos la factorizacion LU dada por
// dooltie

function [L,U] = dooltie_calc(A)
    [nA, mA] = size(A)
    if (nA <> mA) then
        error("dooltie calc - la matriz A debe ser cuadrada")
        abort;
    end
    n = nA // dimension de la matriz
    L = eye(n, n)
    U = zeros(n, n)
    for d=1:n // diagonales
        for j=d:n // derecha diagonal
            sumadj = 0
            for k=1:d
                sumadj = sumadj + L(d,k)*U(k,j)
            end
            U(d,j) = A(d,j) - sumadj
        end
        for i=d+1:n // abajo diagonal
            sumaid = 0
            for k=1:d
                sumaid = sumaid + L(i,k)*U(k,d)
            end
            L(i,d) = (A(i,d) - sumaid)/U(d,d)
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
