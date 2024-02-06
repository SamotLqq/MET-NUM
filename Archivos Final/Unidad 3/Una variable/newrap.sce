function raiz = newrap(f,x0,tol)
    i = 0
    while abs(f(x0)) > tol
        i = i+1
        x0 = x0 - f(x0)/numderivative(f, x0) 
    end
    raiz = x0
    printf("Iteraciones newrap: %d\n", i)
endfunction

// ejemplo de ejecucion met new raph
deff("y = f(x)", "y = x^3 - 1")
printf("La raiz de la funcion f es: %f\n", newrap(f, 0.5, 10^-2))
