function [av, v, iter] = metodoPotencia(A, z0, tol)
    w = A*z0
    z = w/max(w)
    iter = 1
    while abs(norm(z) - norm(z0)) > tol
        w = A*z
        z0 = z
        z = w/max(w)
        iter = iter + 1
    end
    av = w(1)/z0(1)
    v = z
endfunction
/* ejemplo de uso
A = [2 3 5; 1 4 2; 8 7 3] // av dominante: 11.066373 + 0*i
disp(spec(A))
[av, v] = metodoPotencia(A, [1,1,1]', 10^-6)
disp("El autovalor calculado por metodoPotencia es: ")
disp(av)
disp("El autovector calculado por metodoPotencia es: ")
disp(v)
*/
