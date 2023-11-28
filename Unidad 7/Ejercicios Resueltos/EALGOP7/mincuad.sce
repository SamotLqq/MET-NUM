/* primero hacer una funcion que genere la matriz A, conociendo
las abscisas que se tabulan (x_i), que los q_j = x^j y que A es de tamaño
m x p, donde m es la cantidad de puntos tabulados y p el grado del polinomio.
es decir, tenemos m x_i y p q_j.

luego obtener facorizacion qr de A si su rango es n.

encontrar la solucion x que viene dada por sustitucion hacia atras
de Rx = QT*b donde b es el vector de ordenadas originales

despues x es la solucion del sistema Ax = b si es consistente y de
minimos cuadrados si es inconsistente.
*/
function coeficientes = mincuad(x, y, d)
    // Construir la matriz A
    A = zeros(length(x), d + 1);
    for i = 0:d
        A(:, i + 1) = x.^i;
    end
    disp(A)
    disp("el rango de A es:", rank(A))
    // Descomposición QR
    [Q, R] = qr(A);
    // Resolver el sistema Rx = Q^Ty
    coeficientes = inv(R)*(Q' * y');
end

// Ejemplo de uso
x = [1, 2, 4, 8, 16];
y = [100, 200, 300, 400, 500];
d = 4; // Grado del polinomio
c = mincuad(x, y, d);
p = poly(c,"x","coeff")
disp(horner(p,x))




