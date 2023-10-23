exec("metodoPotencia.sce", "errcatch", 0)

function error_potencia(A,z0,tol)
    // calculamos el autovalor dominante con spec
    autovalores = spec(A) // calculamos av's de A
    [avmod, i] = max(abs(autovalores)) // modulo e indice en array del av dom
    av = autovalores(i) // av dom calculado por spec
    // calculamos el autovalor dominante con metodoPotencia
    [avAprox, vAprox, iter] = metodoPotencia(A, z0, tol)
    // calculamos el error.
    err = abs(av - avAprox)
    // mostramos por pantalla lo obtenido
    printf("el autovalor obtenido por spec es: %f\n", av);
    printf("el autovalor obtenido por metodo de la potencia es: %f\n", avAprox);
    printf("El modulo del error obtenido (distancia al autovalor verdadero) es de: %f\n", err)
    printf("Este autovalor corresponde a la iteracion %d, es decir, el valor obtenido por el método de la potencia es lambda(%d)\n", iter, iter)
endfunction

// ejemplo

A = [12 1 3 4;1 -3 1 5; 3 1 6 -2; 4 5 -2 -1]
z0 = [0.1,0.1,0.21,0.42]'
tol = 10^-8
error_potencia(A, z0, tol)

// podemos concluir, a partir de este ejemplo, que la tolerancia de spec es de 10^-8 o mas, pues con 10^-7 da error distinto a 0. pero sabemos también que tolerancias mayores a 10^-10 no son óptimas por lo tanto se puede concluir que trabajar con una tolerancia de 10^-8 es lo mejor en general.

