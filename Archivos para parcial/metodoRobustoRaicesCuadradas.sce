// E1P2
function raices=calcular_raices(coeficientes)
    a = coeficientes(1)
    b = coeficientes(2)
    c = coeficientes(3)
    if b<0 then
        raices(1) = 2*c / (-b + sqrt(b**2 - 4*a*c))
        raices(2) = (-b + sqrt(b**2 - 4*a*c))/2*a
    else
        raices(1) = 2*c / (-b - sqrt(b**2 - 4*a*c))
        raices(2) = (-b - sqrt(b**2 - 4*a*c))/2*a
    end
endfunction

// analisis en cuadernillo
