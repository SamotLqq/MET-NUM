function raiz = falsi(f, a, b, tol)
    if f(a)*f(b) > 0 then
        error("aproximaciones iniciales a y b no validas.");
    end
    i = 0;
    c = b - f(b)*((b-a)/(f(b)-f(a)));
    while abs(f(c)) > tol
        i = i + 1;
        if f(c)* f(a) < 0 then
            b = c;
        else
            a = c;
        end
        c =  b - f(b)*((b-a)/(f(b)-f(a)))
    end
    raiz = c
    printf("Iteraciones falsi: %d\n", i)
endfunction

// ejemplo de ejecucion reg falsi
deff("y = f(x)", "y = x^3 - 1")
printf("La raiz de la funcion f es: %f\n", falsi(f, 0, 2, 10^-2))
