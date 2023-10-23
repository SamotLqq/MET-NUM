exec("Cholesky V1.sci", "errcatch", 0)

A = [16 -12 8 -16; -12 18 -6 9; 8 -6 5 -10; -16 9 -10 46]

B = [4 1 1; 8 2 2; 1 2 3]

C = [1 2; 2 4]

// calculamos
[U,ind] = Cholesky(A)
disp(U)
disp(ind)
// verificamos (U'*U deberia ser A)
L = U'
disp(L*U)

// En A funciona
// Como definida positiva <-> factorizable por cholesky tenemos que:
// En B no funciona porque no es simetrica -> no es definida positiva
// En C tampoco porque 0 es autovalor -> no es definida positiva
