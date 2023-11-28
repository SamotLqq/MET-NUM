// met punto fijo.

function salida=punto_fijo(g,x0,tol,iter)
    // deff("y=f(x)", "y="+fun);
    i = 0;
    x1 = g(x0);
    while abs(x1-x0) > tol && i < iter
        i = i+1;
        x0 = x1;
        x1 = g(x0);
    end;
    if abs(x1-x0) > tol then disp("Se alcanzo el maximo de iteraciones")
    end
    printf("La cantidad de iteraciones fue: %d", i);
    salida = x1;
endfunction

//deff("y = g(x)", "y = 2^(x - 1)") // a punto fijo le pasamos una función que ya es de punto fijo.
//disp(punto_fijo(g, -10, 10^-10, 10000))
