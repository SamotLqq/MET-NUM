clc
clear

function esTriangularSuperior = es_u(matriz)
    [filas, columnas] = size(matriz);
    // Verificar si la matriz es cuadrada (número de filas = número de columnas)
    if filas <> columnas
        esTriangularSuperior = 0;
        return;
    end
    
    // Iterar sobre la matriz (valores a la derecha de la diagonal en 0)
    for i = 1:filas
        for j = 1:i-1
            if matriz(i, j) <> 0
                esTriangularSuperior = 0;
                return;
            end
        end
    end
    
    // Si llegamos hasta aquí, la matriz es triangular superior
    esTriangularSuperior = 1;
endfunction

// dada una matriz cuadrada U triangular superior y un vector independiente b, encunetra x tal que Ux = b
function x = u_solver(U, b)
    [filas, columnas] = size(U)
    [filas_b, columnas_b] = size(b)
    if es_u(U) & filas == columnas_b then
        for i=filas:-1:1
            x(i) = b(i)
            if i < filas
                for j=filas:-1:i+1
                    x(i) = x(i) - U(i,j)*x(j)
                end
            end
            x(i) = x(i)/U(i,i)
        end
    else
        disp("U no es triangular superior o no coincide su cantidad de filas con b")
        x = []
    end
endfunction

// ejemplo

U = [1 1 1 0 ; 0 1 1 0; 0 0 1 0; 0 0 0 1]
b = [1 0 1 1]
/* 
Ux = b 
<->
x1 + x2 + x3 = 1 -> x1 = 1
x2 + x3 = 0 -> x2 = -1
x3 = 1
X4 = 1
*/
disp(u_solver(U,b))

