// E2P3E

exec("Biseccion y Secante.sce")
exec("../E1P3/e1p3e.sce")

// para la raiz 0 aprox

disp(metodo_biseccion(f5, -1, 1, 10^-6))
disp(metodo_secante(f5, -1, 1, 10^-6))

// met bis: 0 it
// met sec: 5 it

// para la raiz  1.93 aprox
format(20, "v")
raizBiseccion = metodo_biseccion(f5, 1, 3, 10^-6)
raizSecante = metodo_secante(f5, 1, 3, 10^-6)
printf("Raiz obtenida por biseccion: %.60f, Valor en raiz : %f\n", raizBiseccion, f3(raizBiseccion))
printf("Raiz obtenida por secante: %.60f, Valor en raiz: %f\n", raizSecante, f3(raizSecante))

// met bis: 17 it
// met sec: 6 it
