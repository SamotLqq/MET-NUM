exec("Usolver.sce", "errcatch", 0)
funcprot(0)

function [x,a] = gausselimPP(A,b)
    // Esta función obtiene la solución del sistema de ecuaciones lineales A*x=b, 
    // dada la matriz de coeficientes A y el vector b.
    // La función implementa el met de Eliminación Gaussiana con pivoteo parcial.
    
    [nA,mA] = size(A) 
    [nb,mb] = size(b)
    
    if nA<>mA then
        error('gausselim - La matriz A debe ser cuadrada');
        abort;
    elseif mA<>nb then
        error('gausselim - dimensiones incompatibles entre A y b');
        abort;
    end;
    
    a = [A b]; // Matriz aumentada
    n = nA;    // Tamaño de la matriz
    
    // Eliminación progresiva con pivoteo parcial
    for k=1:n-1
        kpivot = k; 
        amax = abs(a(k,k));//pivoteo
        for i=k+1:n
            if abs(a(i,k))>amax then
                kpivot = i;
                amax = a(i,k);
            end;
        end;
        temp = a(kpivot,:); 
        a(kpivot,:) = a(k,:); 
        a(k,:) = temp; // intercambiamos la fila kpivot con la fila k de la matriz a
        for i=k+1:n // le restamos a la fila k-esima la fila i-esima por el multiplicador mik
            for j=k+1:n+1 
                a(i,j) = a(i,j) - a(k,j)*a(i,k)/a(k,k);
            end;
            for j=1:k // 0 todos los valores de la columna j-esima abajo de la diagonal (nos repetimos a cambio de mayor precisión)
                a(i,j) = 0;
            end
        end;
    end;
    // Sustitución regresiva
    x = u_solver(a(:,1:n), a(:,n+1))
endfunction

// ejemplo de uso

A = [0 1 1; 2 2 4; 5 6 9]
b = [20, 81, 201]'

[x,a] = gausselimPP(A,b)

disp(x)
disp(a)

