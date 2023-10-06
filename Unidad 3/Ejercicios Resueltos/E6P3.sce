clc
clear
exec("newtonraphson.sce")
exec("puntofijo.sce")
format(20)

// newton de la funcion
deff("y = f(x)", "y = %e^x - 3*x") // a punto fijo le pasamos una función que ya es de punto fijo.
disp(newton(f, 1, 10^-6, 100))

// G1 = e^x / 3
deff("y = g1(x)", "y = %e^x / 3") // a punto fijo le pasamos una función que ya es de punto fijo.
disp(punto_fijo(g1, 1, 10^-6, 100))

// G2 = (e^x - x)/2
deff("y = g2(x)", "y = (%e^x - x)/2") // a punto fijo le pasamos una función que ya es de punto fijo.
disp(punto_fijo(g2, -2, 10^-6, 100))

// G3 = log(3*x)
deff("y = g3(x)", "y = log(3*x)") // a punto fijo le pasamos una función que ya es de punto fijo.
disp(punto_fijo(g3, -10000, 10^-6, 100))

// G4 = e^x - 2*x
deff("y = g4(x)", "y = %e^x - 2*x") // a punto fijo le pasamos una función que ya es de punto fijo.
disp(punto_fijo(g4, 1, 10^-6, 100))


