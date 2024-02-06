exec("gramSchmidt.sce", "errcatch", 0)
exec("../E1P4/Usolver.sce", "errcatch", 0)

function x = qr(A, b)
    q = gramSchmidt(A)
    r = q'*A
    // resolver el sistema Ax = b es lo mismo que resolver el sistema qrx = b que es lo mismo que resolver el sistema rx = q'b por sustitucion hacia atras
    x = u_solver(r, q'*b)
endfunction
/*
ejemplo
A = [1 17 4; 2 35 9; 0 0 1]
b = [2 4 6]'
x = qr(A, b)
disp(A*x)
*/
