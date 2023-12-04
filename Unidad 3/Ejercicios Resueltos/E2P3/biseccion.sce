function raiz=metodo_biseccion(f, a, b, tolerancia)
    i = 0;
    c = (a+b)/2;
    while abs(f(c)) > tolerancia
        i = i + 1;
        if f(c)* f(a) < 0 then
            b = c;
        else
            a = c;
        end
        c = (a+b)/2;
    end
    //printf("f(c): %f, tolerancia: %f\n", f(c), tolerancia)
    printf("La cantidad de iteraciones con biseccion fue: %d\n",i);
    raiz = c
endfunction

// ejemplo de ejecucion met biseccion
deff("y = f(x)", "y = x^3-1")
printf("La raíz de la funcion es: %f\n", metodo_biseccion(f, 0, 2, 10^-2))
