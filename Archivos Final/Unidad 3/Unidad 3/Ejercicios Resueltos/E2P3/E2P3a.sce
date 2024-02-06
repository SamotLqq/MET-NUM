// E2P3A
exec("Biseccion y Secante.sce")
exec("../E1P3/e1p3a.sce")

// para la raiz 1.87 aprox

disp(metodo_biseccion(f1, 0, 2, 10^-6))
disp(metodo_secante(f1, 0, 2, 10^-6))

// met bis: 20 it
// met sec: 5 it

// para la raiz 4.7 aprox

disp(metodo_biseccion(f1, 3, 5, 10^-6))
disp(metodo_secante(f1, 3, 5, 10^-6))

// met bis: 20 it
// met sec: 13 it

// para la raiz 7.8 aprox

disp(metodo_biseccion(f1, 6, 8, 10^-6))
disp(metodo_secante(f1, 6, 8, 10^-6))

// met bis: 20 it
// met sec: 8 it

// para los demás valores (7.8 + k*pi) será analogo pues la función 
// se comporta de la misma forma.

