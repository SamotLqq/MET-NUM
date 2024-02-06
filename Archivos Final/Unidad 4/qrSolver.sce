exec("gramSchmidt.sce", "errcatch", 0)
exec("Usolver.sce", "errcatch", 0)

function x = qr(A, b)
    q = gramSchmidt(A)
    r = q'*A
    // resolver el sistema Ax = b es lo mismo que resolver el sistema qrx = b que es lo mismo que resolver el sistema rx = q'b por sustitucion hacia atras
    x = u_solver2(r, q'*b)
endfunction

//ejemplo de uso y visualizacion de resultados
A = [1 17 4; 2 35 9; 0 0 1]
b = [2 4 6]'
x = qr(A, b)
disp(A*x)

