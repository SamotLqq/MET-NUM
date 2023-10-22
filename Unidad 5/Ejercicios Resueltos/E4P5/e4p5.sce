exec("../../../Unidad 4/Ejercicios resueltos/E5P4/GaussElimPP.sce","errcatch", 0)
exec("../E1P5/gaussSeidel.sce","errcatch",0)

N = 500

A =8*eye(N,N)+ 2*diag(ones(N-1,1),1)+2*diag(ones(N-1,1),-1)+diag(ones(N-3,1),3)+diag(ones(N-3,1),-3)
b =ones(N,1)
x0 = zeros(1,N)
tol = 10^-6
tol2 = 10^-11

tic();
gaussSeidel(A, b, x0, tol)
t = toc();
disp("tiempo transcurrido con gs y tol 10^-6")
disp(t)

tic();
gaussSeidel(A, b, x0, tol2)
t = toc();
disp("tiempo transcurrido con gs y tol 10^-11")
disp(t)

tic();
gausselimPP(A, b)
t = toc();
disp("tiempo transcurrido con gepp")
disp(t)

/*

Con N = 100:
    gs y tol 10^-6: 1.06s
    gs y tol 10^-11: 1.94s
    gepp: 3.4s
Con N = 500:
    gs y tol 10^-6: 21s
    gs y tol 10^-11: 49s
    gepp: 422s (7 minutos)
*/
