// Met de Jacobi
// x_i(k+1) = 1/a_(ii) * (b_i - sum_{j=1, j!=i}^{n} a_(ij)*x_j(k))

function x = jacobi(A, b, x0, eps)
    n = size(A, 1);
    x = x0;
    xk = x;
    cont = 0;
    
    // primera iteracion
    for i=1:n
        suma = 0
        for j=1:n
            if (i<>j) // <> es distinto
                suma = suma + A(i,j)*xk(j);
            end
        end
        x(i) = 1/A(i,i) * (b(i) - suma)
    end
    cont = cont + 1;
    // bucle iterativo
    while (norm(x - xk) > eps)
        xk = x
        for i=1:n
            suma = 0
            for j=1:n
                if (i<>j) // <> es distinto
                    suma = suma + A(i,j)*xk(j);
                end
            end
            x(i) = 1/A(i,i) * (b(i) - suma)
        end
        cont = cont + 1;
    end
    disp(cont)
    disp(x)
endfunction

A = [1 -1 0; -1 2 -1; 0 -1 1.1]
b = [0 1 0]'
jacobi(A,b,[0,0,0],10^-6)
