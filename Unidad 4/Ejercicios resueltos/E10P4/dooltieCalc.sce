funcprot(0)

function [L,U] = dooltie_calc(A)
    [nA, mA] = size(A)
    if (nA <> mA) then
        error("dooltie calc - la matriz A debe ser cuadrada")
        abort;
    end
    dim = nA
    L = zeros(dim, dim)
    U = zeros(dim, dim)
    for j=1:dim
        U(1,j) = A(1,j)
    end
    for i=1:dim
        L(i,1) = A(i,1)/U(1,1)
    end
    disp(U)
    disp(L)
    for i=2:dim
        for j=dim:-1:1
            if (i <= j) then
                ksum = 0
                for k=1:i-1
                    ksum = ksum + L(i,k)*U(k,j)
                end
                U(i,j) = A(i,j) - ksum
            end
            if (i >= j) then
                ksum = 0
                for k=1:i-1
                    ksum = ksum + L(i,k)*U(k,j)
                end
                L(i,j) = (A(i,j) - ksum)/U(j,j)
            end
        end
    end
endfunction

A = [10 100 100; 1 20 110; 1 11 30]
[L,U] = dooltie_calc(A)

disp(L)
disp(U)
disp(L*U)
