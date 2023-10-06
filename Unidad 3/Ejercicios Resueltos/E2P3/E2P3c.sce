// E2P3C
exec("Biseccion y Secante.sce")
exec("../E1P3/e1p3c.sce")

// para la raiz 0.8 aprox

disp(metodo_biseccion(f3, 0, 2, 10^-6))
disp(metodo_secante(f3, 0, 2, 10^-6))

// met bis: 19 it
// met sec: 9 it

// para la raiz -8.6 aprox
format(20, "v")
raizBiseccion = metodo_biseccion(f3, -9, -8, 10^-6)
raizSecante = metodo_secante(f3, -9, -8, 10^-6)
printf("Raiz obtenida por biseccion: %.60f, Valor en raiz : %f\n", raizBiseccion, f3(raizBiseccion))
printf("Raiz obtenida por secante: %.60f, Valor en raiz: %f\n", raizSecante, f3(raizSecante))

// met bis: 30 it
// met sec: 6 it
