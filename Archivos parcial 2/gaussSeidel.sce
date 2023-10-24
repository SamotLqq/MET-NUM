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
    while (norm(x - xk) > eps) && cont < 300
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
    printf("gauss seidel - La cantidad de iteraciones realizadas fue: %d\n", cont)
endfunction

A = [1 0 -1; -1/2 1 -1/4;1 -1/2 1]
b = [0.2 -1.425 2]
x0 = [1 0 0]
tol = 10^-2
disp(A)
//A(1,3) = -2 para item d

x = gaussSeidel(A, b, x0, tol)
disp(x)
disp(A*x')

//c
//gauss seidel - La cantidad de iteraciones realizadas fue: 12
//
//   0.9027285  -0.7979536   0.6982947
//
//   0.2044338
//  -1.4238916
//   2.
//d
//gauss seidel - La cantidad de iteraciones realizadas fue: 300
//
//   1.707D+41   1.067D+41  -1.173D+41
//
//   4.053D+41
//   5.066D+40
//   0.       


