// Pràctica 2, ejercicio 3b

function b=alghorner(a,x) // x la variable del polinomio y a vector de coeficientes devuelve la evaluaciòn del polinomio en x mediante alghorner
    n = length(a);
    b = a(n);
    for i = (n-1): (-1) : 1
        b = a(i) + x*b;
    end
endfunction
