function raiz2=metodo_secante(f,a,b,tolerancia)
    c = b - f(b)*((b-a)/(f(b)-f(a)));
    i = 0;
    while abs(f(c)) > tolerancia
        i = i + 1;
        a = b
        b = c
        c = b - f(b)*((b-a)/(f(b)-f(a)));
    end
    //printf("c: %f, f(c): %f, tolerancia: %f\n", c, f(c), tolerancia)
    printf("La cantidad de iteraciones con met secante fue: %d\n", i)
    raiz2 = c
endfunction

// ejemplo de ejecucion met secante
deff("y = f(x)", "y = x^3-1")
printf("La raiz de la funcion f es: %f\n", metodo_secante(f, 0, 2, 10^-2))
