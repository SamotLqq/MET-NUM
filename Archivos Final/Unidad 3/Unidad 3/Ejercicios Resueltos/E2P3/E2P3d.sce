// EDP3D
exec("Biseccion y Secante.sce")
exec("../E1P3/e1p3d.sce")

// para la raiz 1
format(20, "v")
// no se puede calcular por biseccion pues f es negativa
raizSecante = metodo_secante(f4, 0.9, 1.1, 10^-6)
printf("Raiz obtenida por secante: %.60f, Valor en raiz: %f\n", raizSecante, f4(raizSecante))

// met sec: 11 it
