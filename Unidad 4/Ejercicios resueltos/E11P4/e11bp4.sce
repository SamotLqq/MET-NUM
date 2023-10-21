exec("Cholesky V2.sce", "errcatch", 0)

A = [16 -12 8 -16; -12 18 -6 -9; 8 -6 5 -10; -16 9 -10 46]

B = [4 1 1; 8 2 2; 1 2 3]

C = [1 2; 2 4]

// calculamos
[U,ind] = cholesky(C)
disp(U)
disp(ind)
// verificamos (U*U' deberia ser A)
disp(U*U')

// En todos los casos la factorización es incorrecta pues A, B y C no son definidas positivas ya que no son simétricas
