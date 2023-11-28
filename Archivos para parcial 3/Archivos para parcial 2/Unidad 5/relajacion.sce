// Met de relajacion
// x_i(k+1) = (1-w)x_i(k) + w/a_(ii) * (b_i - sum_{j=1}^{i-1} a_(ij)*x_j(k+1)) - sum_{j=1}^{i+1} a_(ij)*x_j(k))

function x = relajacion(A, b, w, x0, eps)
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
        x(i) = (1-w)*xk(i) + w/A(i,i) * (b(i) - suma) //aca
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
            x(i) = (1-w)*xk(i) + w/A(i,i) * (b(i) - suma) // aca
        end
        cont = cont + 1;
    end
    printf("relajacion - La cantidad de iteraciones realizadas fue de: %d\n", cont)
endfunction
