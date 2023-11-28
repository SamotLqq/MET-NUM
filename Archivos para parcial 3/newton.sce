// Diferencias dividas

function w=DD(x,y)
    n = length(x);
    if n==1 then
        w = y(1)
    else
        w = (DD(x(2:n),y(2:n))-DD(x(1:n-1),y(1:n-1)))/(x(n)-x(1))
    end;
endfunction

// Polinomio interpolante (con Newton)

function p = DD_newton(x,y)
    r = poly(0,"x");
    p = 0;
    n= length(x);
    for i=n:(-1):2
        p = (p+DD(x(1:i),y(1:i)))*(r-x(i-1))
    end;
    p = p + y(1);
endfunction

// Ejercicio 1
// lineal
x1=[0,0.2]
y1=[1,1.2214]
// cubica
x2=[0,0.2,0.4,0.6]
y2=[1,1.2214,1.4918,1.8221]

lineal = DD_newton(x1,y1)
cubica = DD_newton(x2,y2)

rango = [-2:0.01:2]

plot(rango,horner(lineal,rango),"r")
plot(rango,horner(cubica,rango),"b")
plot(rango,exp(rango),"g")
a=gca();
a.x_location = "origin";
a.y_location = "origin";
h1 = legend("Lineal","Cubico","e^x")

dato = %e^(1/3)
disp(%e^dato)
disp(horner(lineal, dato))
disp(horner(cubica, dato))
disp(cubica)
disp(lineal)
