// Met de Gauss Seidel
// x_i(k+1) = 1/a_(ii) * (b_i - sum_{j=1}^{i-1} a_(ij)*x_j(k+1))
//                              sum_{j=1}^{i+1} a_(ij)*x_j(k))

function x = gaussSeidel(A, b, x0, eps)
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
                    suma = suma + A(i,j)*x(j);
                end
            end
            x(i) = 1/A(i,i) * (b(i) - suma)
        end
        cont = cont + 1;
    end
    printf("gauss seidel - La cantidad de operaciones realizadas fue: %d\n", cont)
endfunction

