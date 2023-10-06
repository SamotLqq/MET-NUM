// Met de Gauss Seidel
// x_i(k+1) = 1/a_(ii) * (b_i - sum_{j=1}^{i-1} a_(ij)*x_j(k+1))
//                              sum_{j=1}^{i+1} a_(ij)*x_j(k))
clc
clear

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
    disp(cont)
    disp(x)
    disp(A*x')
endfunction
// sistema 1
// 1b no converge para cualquier x0 inicial pues para x0 = [0 0 0] no converge.
// 1c
A = [0 2 4; 1 -1 -1; 1 -1 2]
b = [0 0.375 0]'
gaussSeidel(A,b,[0,0,0],10^-2)
// sistema 2 
// 1b converge para cualquier valor x0 inicial ya que es diagonal dominante, pues 1 >= 1+0, 2 >= -2, 1.1 >= -1 
// 1c 
A = [1 -1 0; -1 2 -1; 0 -1 1.1]
b = [0 1 0]'
gaussSeidel(A,b,[0,0,0],10^-2)
