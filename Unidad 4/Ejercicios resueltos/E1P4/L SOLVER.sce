clc
clear

function esTriangularInferior = es_l(matriz)
    [filas, columnas] = size(matriz);
    // Verificar si la matriz es cuadrada (número de filas = número de columnas)
    if filas <> columnas
        esTriangularInferior = 0;
        return;
    end
    
    // Iterar sobre la matriz (valores a la derecha de la diagonal en 0)
    for i = 1:filas
        for j = columnas:-1:i+1
            if matriz(i, j) <> 0
                esTriangularInferior = 0;
                return;
            end
        end
    end
    
    // Si llegamos hasta aquí, la matriz es triangular inferior
    esTriangularInferior = 1;
endfunction

// dada una matriz cuadrada L triangular inferior y un vector independiente b, encunetra x tal que Lx = b
function x = l_solver(L, b)
    [filas, columnas] = size(L)
    [filas_b, columnas_b] = size(b)
    if es_l(L) & filas == columnas_b then
        for i=1:filas
            x(i) = b(i)
            if i > 1
                for j=1:i-1
                    x(i) = x(i) - L(i,j)*x(j)
                end
            end
            x(i) = x(i)/L(i,i)
        end
    else
        disp("L no es triangular inferior o no coincide su cantidad de filas con b")
        x = []
    end
endfunction

// ejemplo

L = [1 0 1 0; 1  1 1 0; 1 1 1 1]
b = [1 0 1]
/* 
Lx = b 
<->
x1 = 1
x1 + x2 = 0 -> x2 = -1
x1 + x2 + x3 = 1 -> x3 = 1
*/
disp(l_solver(L,b))


