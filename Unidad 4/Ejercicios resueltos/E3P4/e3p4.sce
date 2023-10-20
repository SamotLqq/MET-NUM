// Ejercicio 3 de la Práctica 4
exec("gaussAmp.sce", "errcatch", 0)

// ítem (b)
A = [1,2,3;3,-2,1;4,2,-1]
B = [14,9,-2;2,-5,2;5,19,12]
[X,A_aum] = Gauss_amp(A,B)
disp("La solución es: X=")
disp(X)
//disp(A*X)
//disp(B)

// ítem (c)
// La matriz inversa de A verifica que A*A^{-1} = Id. Entonces, proponemos resolver A*X = Id
[nA, mA] = size(A)
Id = eye(nA,mA)
[A_inv,A_aum] = Gauss_amp(A,Id)
disp("La inversa de A es: A^{-1}=")
disp(A_inv)
disp("Verificando, A*A^{-1}=")
disp(A*A_inv)
