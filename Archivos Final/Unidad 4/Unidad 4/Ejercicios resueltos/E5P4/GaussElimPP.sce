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
operacionesEliminacion = 0
for k=1:n-1
    kpivot = k; amax = abs(a(k,k));  //pivoteo
    for i=k+1:n
        if abs(a(i,k))>amax then
            kpivot = i; amax = a(i,k);
        end;
    end;
    temp = a(kpivot,:); a(kpivot,:) = a(k,:); a(k,:) = temp; // intercambiamos la fila kpivot con la fila k de la matriz a
    for i=k+1:n // le restamos a la fila k-esima la fila i-esima por el multiplicador mik
        for j=k+1:n+1 
            a(i,j) = a(i,j) - a(k,j)*a(i,k)/a(k,k);
            operacionesEliminacion = operacionesEliminacion + 3
        end;
        for j=1:k // 0 todos los valores de la columna j-esima abajo de la diagonal (nos repetimos a cambio de mayor precisión)
            a(i,j) = 0;
        end
    end;
end;

// Sustitución regresiva
x(n) = a(n,n+1)/a(n,n);
operacionesSustitucion = 1
for i = n-1:-1:1
    sumk = 0
    for k=i+1:n
        sumk = sumk + a(i,k)*x(k);
        operacionesSustitucion = operacionesSustitucion + 2
    end;
    x(i) = (a(i,n+1)-sumk)/a(i,i);
    operacionesSustitucion = operacionesSustitucion + 1
end;
printf("gepp - La cantidad de operaciones en el proceso de eliminacion fue: %d\n", operacionesEliminacion)
printf("gepp - La cantidad de operaciones en el proceso de sustitucion fue: %d\n", operacionesSustitucion)
endfunction
