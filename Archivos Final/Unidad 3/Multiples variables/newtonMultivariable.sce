// newton multivariable
exec("jacobiana.sce","errcatch",0)

// func es una funcion vectorial
// X valores a evaluar
// tol un arreglo con la tolerancia para cada variable
// iter la cantidad de iteraciones
function salida=newton_multivariable(func,X0,tol,iter)
    i = 0;
    X1 = X0 - inv(calcularJacobiana(func, X0))*func(X0);
    while abs(X1-X0) > tol && i < iter
        i = i+1;
        X0 = X1;
        X1 = X0 - inv(calcularJacobiana(func, X0))*func(X0);
    end;
    if abs(X1-X0) > tol then disp("Se alcanzo el maximo de iteraciones")
    end
    printf("La cantidad de iteraciones fue: %d", i);
    salida = X1;
endfunction
// Definir las funciones
deff("y = f1(x)", "y = x(1) + x(2) + 5")
deff("y = f2(x)", "y = x(1)^2 + x(2)^2 - 97")

// Definir funcion vectorial
function faa = func_vect(X)
    faa(1) = f1(X)
    faa(2) = f2(X)
endfunction

// Crear un vector de entrada
X = [1; 2]
tol = [1e-6; 1e-6]
iter=500

// Calcular la matriz Jacobiana en el punto x
sol = newton_multivariable(func_vect, X, tol, iter);
// Resultado obtenido:
disp('Solucion:');
disp(sol);

