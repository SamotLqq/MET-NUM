clc
clear
exec("derivadanumericaE4P2.sce")

// E5P2
 /*
Implementar en Scilab una funci´on taylor 
que calcule el valor de un polinomio de Taylor de
grado n de una funcion f en un punto dado v.
 */

h = 0.0001 // h es la variable del cociente incremental que tiende a 0 cuando 
//queremos hallar la derivada y en el caso computacional es un número fijo.

// recibe la funcion como tal.
function polinomioTaylor = taylor(f, n, v)
    i = 0
    x = poly(0, "x");
    p = 0;
    while i <= n
        p = p + (1/factorial(i))*derivar(f,v,i,h)*((x - v)**i);
        i = i+1;
    end
    polinomioTaylor = p
endfunction

// recibe la funcion como string
function polinomioTaylor = taylor2(f, n, v)
    i = 0
    x = poly(0, "x");
    p = 0;
    while i <= n
        p = p + (1/factorial(i))*derivadaNum(f,v,i,h)*((x - v)**i);
        i = i+1;
    end
    polinomioTaylor = p
endfunction

// E6P2
f2 = "%e^x"
polinomioTaylor = taylor2(f2, 4, -2);
disp("Polinomio resultante")
disp(polinomioTaylor);
disp("valor calculado por scilab de e^-2")
disp(%e**-2)
disp("valor calculado por polinomio de taylor de orden 3 programado en scilab de e^-2")
disp(horner(polinomioTaylor, -2))
polinomioTaylor2 = taylor2(f2, 4, 2)
disp("por otro lado si evaluamos 1/e^2 con scilab y nuestro polinomio de taylor obtenemos")
disp("valor calculado por scilab de 1/e^2")
disp(1/%e**2)
disp("valor calculado por polinomio de taylor de orden 3 programado en scilab de 1/e^2")
disp(1/horner(polinomioTaylor2, 2))
disp("podemos concluir que la mejor aproximación es cuando mas cercanos están los puntos de la función en un entorno reducido de un punto")
disp("como sabemos que e^x crece lentamente en el intervalo (-inf,0] y crece rapidamente en el intervalo [0, inf), está claro que donde menos distancia entre las imagenes de e^x es en los negativos (-2) y no en los positivos (2)")
