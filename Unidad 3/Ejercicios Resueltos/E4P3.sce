clc
clear
exec("newtonraphson.sce")
exec("puntofijo.sce")
format(20)


// Ejemplos con newton raphson y la funcion de punto fijo dada. 

deff("y = f(x)", "y = 2^x - 2*x") // a newton le ponemos la funcion que queremos hallar los 0´s y crea una funcion de punto fijo.
disp(newton(f, 1.5, 10^-10, 100))

deff("y = g(x)", "y = 2^(x - 1)") // a punto fijo le pasamos una función que ya es de punto fijo.
disp(punto_fijo(g, 1.5, 10^-10, 10000))
