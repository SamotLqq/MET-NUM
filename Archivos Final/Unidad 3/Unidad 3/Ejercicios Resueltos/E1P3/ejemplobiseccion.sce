function resultado = funcion(x)
    resultado = log(x) - x + 1;
endfunction

function raiz = biseccion(funcion, a, b, tol, max_iter)
    if funcion(a) * funcion(b) > 0
        error("La función no cumple con el teorema de Bolzano en el intervalo dado.")
    end

    iter = 0;
    while (b - a) / 2 > tol && iter < max_iter
        c = (a + b) / 2;
        if funcion(c) == 0
            raiz = c;
            break;
        elseif funcion(c) * funcion(a) < 0
            b = c;
        else
            a = c;
        end
        iter = iter + 1;
    end
    raiz = (a + b) / 2;
endfunction

a = 0.9;
b = 1.1;
tolerancia = 0.00005;

raiz = biseccion(funcion, a, b, tolerancia, 100);
disp(raiz)
