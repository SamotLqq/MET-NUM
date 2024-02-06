function sol = puntofijo(g, x0, tol)
    x1 = g(x0)
    i = 0
    while abs(g(x0)-g(x1)) > tol
        x0 = x1
        x1 = g(x1)
        i = i+1
    end
    printf("La cantidad de iteraciones es: %d", i)
    sol = x1
endfunction

// ejemplo de uso
deff("y = f(x)", "y=cos(x)")
disp(puntofijo(f,4,10^-8))
