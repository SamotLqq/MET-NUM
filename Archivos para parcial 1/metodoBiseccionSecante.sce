// E2P3
//clc // limpia la consola
//clear // borra el contenido de la memoria
//exec("nombre de archivo donde hay funciones que se quieren ejecutar.sce") para ejecutarlas y usarlas en otro archivo (como un includ)
function raiz=metodo_biseccion(f, a, b, tolerancia)
    iteraciones = 0;
    c = (a+b)/2;
    while abs(f(c)) > tolerancia
        //printf("a: %f, b: %f, c: %f, f(b): %f, f(c): %f\n", a, b, c,f(b),f(c))
        iteraciones = iteraciones + 1;
        if f(c)* f(a) < 0 then
            b = c;
        else
            a = c;
        end
        c = (a+b)/2;
    end
    //printf("f(c): %f, tolerancia: %f\n", f(c), tolerancia)
    //printf("b: %f, c: %f, b - c: %f\n", b, c, b - c)
    printf("La cantidad de iteraciones con met biseccion fue: %d\n", iteraciones);
    raiz = c
endfunction

function raiz2=metodo_secante(f,a,b,tolerancia)
    c = b - f(b)*((b-a)/(f(b)-f(a)));
    iteraciones = 0;
    while abs(f(c)) > tolerancia
        iteraciones = iteraciones + 1;
        a = b
        b = c
        c = b - f(b)*((b-a)/(f(b)-f(a)));
    end
    //printf("c: %f, f(c): %f, tolerancia: %f\n", c, f(c), tolerancia)
    printf("La cantidad de iteraciones con met secante fue: %d\n", iteraciones)
    raiz2 = c
endfunction

/*
// ejemplo de ejecucion met biseccion
deff("y = f(x)", "y = x+1")
printf("La raíz de la funcion f(x) = x + 1 en el intervalo [-2, 0] es: %f\n", metodo_biseccion(f, -2, 0, 10^-6))

// ejemplo de ejecucion met secante
printf("La raiz de la funcion f(x) = x + 1 en el intervalos [-2, 0] es: %f\n", metodo_secante(f, -2, 0, 10^-6))
*/


