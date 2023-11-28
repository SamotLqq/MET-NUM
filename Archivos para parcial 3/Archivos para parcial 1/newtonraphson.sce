// met newton rapson.

function salida=newton(f,x0,tol,iter)
    //deff("y=f(x)", "y="+fun);
    i = 0;
    x1 = x0 - f(x0)/numderivative(f,x0);
    while abs(x1-x0) > tol && i < iter
        i = i+1;
        x0 = x1;
        x1 = x0 - f(x0)/numderivative(f,x0);
    end;
    if abs(x1-x0) > tol then disp("Se alcanzo el maximo de iteraciones")
    end
    printf("La cantidad de iteraciones fue: %d", i);
    salida = x1;
endfunction

//deff("y = f(x)", "y = 2^x - 2*x") // a newton le ponemos la funcion que queremos hallar los 0´s y crea una funcion de punto fijo.
//format(20)
//disp(newton(f, 10, 10^-3, 10))

