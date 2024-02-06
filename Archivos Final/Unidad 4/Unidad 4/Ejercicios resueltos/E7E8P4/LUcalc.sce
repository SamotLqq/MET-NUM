
function [L,U,P] = lu_calculator(A)
// Obtiene la factorización PA = LU de A
[nA,mA] = size(A) 

if nA<>mA
    error('gausselim - La matriz A debe ser cuadrada');
    abort;
end;

dim = nA;    // Dimension fila y columna de la matriz
L = eye(dim,dim)
P = eye(dim,dim)
// Eliminación progresiva con pivoteo parcial
operacionesEliminacion = 0
for k=1:dim-1 // por cada fila menos la ultima
    kpivot = k; amax = abs(A(k,k));  
    for i=k+1:dim // elegimos el mayor pivot de la columna k-esima debajo de la fila k
        if abs(A(i,k))>amax then
            kpivot = i; amax = A(i,k);
        end;
    end;
    temp = A(kpivot,:); A(kpivot,:) = A(k,:); A(k,:) = temp; // intercambiamos la fila kpivot con la fila k de la matriz a
    temp = L(kpivot,1:k-1); L(kpivot,1:k-1) = L(k,1:k-1);  L(k,1:k-1) = temp;
    temp = P(kpivot,:); P(kpivot,:) = P(k,:); P(k,:) = temp;
    for i=k+1:dim // le restamos a la fila k-esima la fila i-esima por el multiplicador mik y le metemos el multiplicador a L
        L(i,k) = A(i,k)/A(k,k)
        A(i,k:dim) = A(i,k:dim) - L(i,k)*A(k,k:dim)
    end;
end;
U = A
endfunction

