// E7P3
clc
clear
exec("newtonMultivariable.sce")
// Definir las entradas
function f = miFuncion2(x, y)
    f(1) = 1 + x^2 - y^2 + exp(x)*cos(y)// Componente 1 de la función
    f(2) = 2*x*y + exp(x)*sin(y); // Componente 2 de la función
endfunction
// en -1 4 no tiene sentido porque diverge pero en este punto sale algo mejor.
tol = [10^-6 ; 10^-6];
x0 = -0.29316;
y0 = 1.17266;
iter = 1000;
// Valor de mi funcion en el punto inicial z0:
disp("Mi funcion en (-1, 4):")
disp(miFuncion2(x0, y0))
// Aplicamos newton raphson mult
z1 = newton_multivariable2(miFuncion2, x0, y0, tol, iter)
// Resultado obtenido:
disp('Punto fijo obtenido:');
disp(z1);
disp("Evaluacion del punto fijo en mi funcion: ");
disp(miFuncion2(z1(1), z1(2)))
