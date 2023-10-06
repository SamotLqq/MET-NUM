// Ejercicio 3 de la Práctica 3

// ítem (a)
function [X,A_aum] = Gauss_amp(A,B)
    
   [nA, mA] = size(A);
   [nB, mB] = size(B);
   
   if nA<>mA then
        error('gausselim - La matriz A debe ser cuadrada');
        abort;
    elseif mA<>nB then
        error('gausselim - dimensiones incompatibles entre A y b');
        abort;
    end;
   
   // Matriz aumentada
   A_aum = [A,B];
   
   // Eliminación progresiva
   for i = 1:(nA-1) do
      for j = (i+1):nA do
         mji = A_aum(j,i)/A_aum(i,i) 
         A_aum(j,i)=0 
         A_aum(j,(i+1):(mA+mB)) = A_aum(j,(i+1):(mA+mB)) - mji*A_aum(i,(i+1):(mA+mB))
      end
   end
       
   // Sustitución regresiva
   X(nA,1:mB) = A_aum(nA,(nA+1):(nA+mB))/A_aum(nA,nA)
   
   for i = (nA-1):-1:1 do
      X(i,1:mB) = (A_aum(i,(mA+1):(mA+mB)) - (A_aum(i,(i+1):mA)*X((i+1):mA,1:mB)))/A_aum(i,i)
   end
endfunction

// Ejercicio: Probar con al menos 2 ejemplos de prueba y verificar la solución.

// ítem (b)
A = [1,2,3;3,-2,1;4,2,-1]
B = [14,9,-2;2,-5,2;5,19,12]
[X,A_aum] = Gauss_amp(A,B)
disp("La solución es: X=")
disp(X)
// disp(A*X)
// disp(B)

// ítem (c)
// La matriz inversa de A verifica que A*A^{-1} = Id. Entonces, proponemos resolver A*X = Id
[nA, mA] = size(A)
Id = eye(nA,mA)
[A_inv,A_aum] = Gauss_amp(A,Id)
disp("La inversa de A es: A^{-1}=")
disp(A_inv)
disp("Verificando, A*A^{-1}=")
disp(A*A_inv)
