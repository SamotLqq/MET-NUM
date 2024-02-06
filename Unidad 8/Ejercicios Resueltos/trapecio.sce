function integral = trapecio(f, a, b)
    if b <= a then
        error("intervalo [a,b] no valido.")
    end
    h = b - a
    integral = (h/2)*(f(a) + f(b))
endfunction

// ejemplo de uso
deff("y=f(x)", "y=x^5 + 3*x + 6")
disp(trapecio(f, 0, 10))
