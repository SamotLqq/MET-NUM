// E2P3B
exec("Biseccion y Secante.sce")
exec("../E1P3/e1p3b.sce")

// para la raiz 0 aprox

disp(metodo_biseccion(f2, -1, 1, 10^-6))
disp(metodo_secante(f2, -1, 1, 10^-6))

// met bis: 20 it
// met sec: 0 it

// para la raiz pi

disp(metodo_biseccion(f2, 2, 4, 10^-6))
disp(metodo_secante(f2, 2, 4, 10^-6))

// met bis: 20 it
// met sec: 7 it
