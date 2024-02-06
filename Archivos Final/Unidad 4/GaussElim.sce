exec("Usolver.sce", "errcatch", 0)

function [x,a] = gausselim(A,b)
    // Esta función obtiene la solución del sistema de ecuaciones lineales A*x=b, 
    // dada la matriz de coeficientes A y el vector b.
    // La función implementa el mét de Eliminación Gaussiana sin pivoteo.    
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
    // Eliminación progresiva
    n = nA;
    for k=1:n-1 // todas las filas menos la ultima
        for i=k+1:n // filas abajo de la fila actual en cada iteracion
            a(i,:) = a(i,:) - a(k,:)*a(i,k)/a(k,k)
        end;
    end;
    // Sustitución regresiva
    x = u_solver(a(:,1:n), a(:,n+1))
endfunction


// ejemplo de uso

A = [1 1 1; 2 3 4; 5 6 9]
b = [30, 69, 720]'

[x,a] = gausselim(A,b)

disp(x)
disp(a)

