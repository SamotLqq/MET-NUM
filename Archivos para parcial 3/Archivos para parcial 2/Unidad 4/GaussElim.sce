// a y c

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
operacionesEliminacion = 0
// Eliminación progresiva
n = nA;
for k=1:n-1 // todas las filas menos la ultima
    for i=k+1:n // filas abajo de la fila actual en cada iteracion
        for j=k+1:n+1 // columnas a la derecha de la diagonal en cada iteracion
            a(i,j) = a(i,j) - a(k,j)*a(i,k)/a(k,k);
            operacionesEliminacion = operacionesEliminacion + 3
        end;
        for j=1:k
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
printf("ge - La cantidad de operaciones en el proceso de eliminacion fue: %d\n", operacionesEliminacion)
printf("ge - La cantidad de operaciones en el proceso de sustitucion fue: %d\n", operacionesSustitucion)
endfunction

function [A] = generar_A(n)
    A = zeros(n,n)
    for i=1:n
        for j=1:n
            if (i > j+1) then
                A(i,j) = 0
            else
                A(i,j) = 1/(i+j-1)
            end
        end
    end
endfunction

function [b] = generar_b(n)
    b = zeros(1,n)
    for i=1:n
        b(i) = i
    end
endfunction

A = generar_A(20)
b = generar_b(20)
disp("A =")
disp(A)
disp("B =")
disp(b)

[x,a] = gausselim(A,b')
disp("x =")
disp(x)
disp("U =")
disp(a)
disp("A*x =")
disp(A*x) 



