exec("trapecio.sce", "errcatch", 0)

function integral = trapecioComp(f, a, b, n)
    if b <= a then
        error("intervalo [a,b] no valido.")
    end
    h = (b-a)/n
    integral = 0
    for i = 0:n-1
        x0 = a+i*h
        x1 = a+(i + 1)*h
        integral = integral + trapecio(f,x0,x1)
    end
endfunction

// ejemplo de uso
deff("y=f(x)", "y=x^5 + 3*x + 6")
disp(trapecioComp(f, 0, 10, 100))
