exec("relajacion.sce","errcatch",0)

A = [4 3 0; 3 4 -1; 0 -1 4]
b = [24 30 -24]
x0 = [100 100 100]
tol = 10^-2
w = 2/(1+sqrt(15/16))

// w optimo
x = relajacion(A,b,w,x0,tol)
disp(x)
disp(A*x')
// w = 1 (gauss-seidel)
x = relajacion(A, b, 1, x0, tol)
disp(x)
disp(A*x')

// podemos concluir que se gauss seidel necesitas mas o la misma cantidad de iteraciones que SOR con w óptimo
