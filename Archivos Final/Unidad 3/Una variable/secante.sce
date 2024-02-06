function raiz=metodo_secante(f,a,b,tol)
    c = b - f(b)*((b-a)/(f(b)-f(a)));
    i = 0;
    while abs(f(c)) > tol
        i = i + 1;
        a = b
        b = c
        c = b - f(b)*((b-a)/(f(b)-f(a)));
    end
    printf("La cantidad de iteraciones con met secante fue: %d\n", i)
    raiz = c
endfunction

// ejemplo de ejecucion met secante
deff("y = f(x)", "y = x^3-1")
printf("La raiz de la funcion f es: %f\n", metodo_secante(f, 0, 2, 10^-2))
