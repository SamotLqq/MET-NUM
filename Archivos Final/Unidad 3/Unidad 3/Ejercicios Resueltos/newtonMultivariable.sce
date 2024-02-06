// newton multivariable
exec("../../Archivos para parcial/matrizJacobiana2.sce")
exec("../../Archivos para parcial/matrizJacobiana3.sce")

// la func sera un arreglo con 2 funciones de 2 variables
// x0, y0 reales
// tol un arreglo con la tolerancia para cada variable
// iter la cantidad de iteraciones
function salida=newton_multivariable2(func,x0,y0,tol,iter)
    i = 0;
    z0 = [x0 ; y0];
    z1 = z0 - inv(calcularJacobiana2(func, x0, y0))*func(x0,y0);
    while abs(z1-z0) > tol && i < iter
        i = i+1;
        z0 = z1;
        z1 = z0 - inv(calcularJacobiana2(func, x0, y0))*func(x0,y0);
    end;
    if abs(z1-z0) > tol then disp("Se alcanzo el maximo de iteraciones")
    end
    printf("La cantidad de iteraciones fue: %d", i);
    salida = z1;
endfunction
/*
// Ejemplo que converge en (2,1) (los mejores resultados se 
//obtienen iterando entre 100 y 1000 veces)
// Definir las entradas
function f = miFuncion2(x, y)
    f(1) = x^2 + 2*(y^2) - 6; // Componente 1 de la función
    f(2) = x + y - 3;; // Componente 2 de la función
endfunction

tol = [10^-6 ; 10^-6];
x0 = 2 - 10^-5;
y0 = 1 + 10^-5;
iter = 10;
// Aplicamos newton raphson mult
z1 = newton_multivariable2(miFuncion2, x0, y0, tol, iter)
// Resultado obtenido:
disp('Punto fijo obtenido:');
disp(z1);
disp("Evaluacion del punto fijo obtenido en mi funcion: ");
disp(miFuncion2(z1(1), z1(2)))
*/
