// E8P3 
clc
clear
exec("newtonMultivariable.sce")
// Definir las entradas
function f = miFuncion2(x, y)
    f(1) = x^2 + x*(y^3) - 9;// Componente 1 de la función
    f(2) = 3*(x^2)*y - 4 - y^3; // Componente 2 de la función
endfunction
tol = [10^-6 ; 10^-6];
iter = 10;
x0 = -3.0000001;
y0 = 0.15;

// Valor de mi funcion en el punto inicial z0:
printf("Mi funcion en (%f, %f):", x0, y0)
disp(miFuncion2(x0, y0))
// Aplicamos newton raphson mult
z1 = newton_multivariable2(miFuncion2, x0, y0, tol, iter)
// Resultado obtenido:
disp('Punto fijo obtenido:');
disp(z1);
disp("Evaluacion del punto fijo en mi funcion: ");
disp(miFuncion2(z1(1), z1(2)))// E8P3
// conclusion: 
// con 1000 iter en a diverge, en b diverge, en c diverge, en d diverge
