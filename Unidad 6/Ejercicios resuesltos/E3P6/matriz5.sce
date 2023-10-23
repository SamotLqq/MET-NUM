// creamos A(e) con e = 0.5
A = [1 -1 9; -2 4 -2; 0 -1 1.5]
disp(A)
// creamos el polinomio caracteristico
p = poly(A, 'z')
raices = roots(p)
// calculamos sus raices
disp(p)
disp(raices)
// calculamos los autovalores de A
av = spec(A)
disp(av)
