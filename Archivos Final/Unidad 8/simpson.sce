function integral = simpson(f,a,b)
    if b <= a then
        error("intervalo [a,b] no valido.")
    end
    h = (b - a)/2
    c = b
    b = a+h
    integral = (h/3)*(f(a) + 4*f(b)+ f(c))
endfunction

// ejemplo de uso
deff("y=f(x)", "y=x^5 + 3*x + 6")
disp(simpson(f, 0, 10))
