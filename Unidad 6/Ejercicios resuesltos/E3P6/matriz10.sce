// creamos A(e) con e = 1
A = [1 -1 9; -2 4 -2; 0 -1 2]
disp(A)
// creamos el polinomio caracteristico
p = poly(A, 'z')
raices = roots(p)
// calculamos sus raices
disp(p)
disp(raices)
// calculamos los autovalores de A
av10 = spec(A)
disp(av)
