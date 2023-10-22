exec("relajacion.sce", "errcatch",0)
exec("../E1P5/gaussSeidel.sce", "errcatch", 0)

A = [1 -1 0; -1 2 -1; 0 -1 1.1]
b = [0 1 0]
x0 = [0 0 0]
tol = 10^-6
w = -1 // si w = 1 gs, si w<1 subrelajacion (SUR) si w>1 sobrerelajacion (SOR) con w >= 2 diverge, hasta 1.6 probado que anda, (1.6,2) intervalo indeterminado

x = relajacion(A,b,w,x0,tol)
disp(x)
disp(A*x')

x = gaussSeidel(A, b, x0, tol)
disp(x)
disp(A*x')
