function raiz = falsi(f, a, b, tol)
    i = 0;
    c = b - f(b)*((b-a)/(f(b)-f(a)));
    while abs(f(c)) > tol
        i = i + 1;
        if f(c)* f(a) < 0 then
            b = c;
        else
            a = c;
        end
        c = b - f(b)*((b-a)/(f(b)-f(a)))
    end
    //printf("f(c): %f, tolerancia: %f\n", f(c), tolerancia)
    //printf("La cantidad de iteraciones con met biseccion fue: %d\n", iteraciones);
    raiz = c
    printf("Iteraciones falsi: %d\n", i)
endfunction

deff("y = f(x)", "y = x^3 - 1")
printf("La raiz de la funcion f es: %f\n", falsi(f, 0, 2, 10^-2))
