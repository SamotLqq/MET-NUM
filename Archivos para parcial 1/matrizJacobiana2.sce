// Calcular la matriz Jacobiana
function J = calcularJacobiana2(func, x0, y0)
    n = length(func(x0, y0)); // Número de componentes de la función
    m = length([x0, y0]); // Número de variables independientes

    J = zeros(n, m); // Inicializar la matriz Jacobiana

    // Calcular las derivadas parciales
    for i = 1:n
        for j = 1:m
            h = 1e-6; // Tamaño del paso para la aproximación de la derivada
            x = [x0, y0];
            x(j) = x(j) + h;
            J(i, j) = (func(x(1), x(2))(i) - func(x0, y0)(i)) / h;
        end
    end
endfunction
/*
// Ejemplo de uso:
// Definir la función f(x, y)
function f = miFuncion2(x, y)
    f(1) = x^2 + y^2; // Componente 1 de la función
    f(2) = x*y; // Componente 2 de la función
endfunction
// Punto en el que se evalúa la matriz Jacobiana
x0 = 1;
y0 = 2;
// Calcular la matriz Jacobiana en el punto (x0, y0)
matrizJacobiana2 = calcularJacobiana2(miFuncion2, x0, y0);
// Resultado obtenido:
disp('Matriz Jacobiana:');
disp(matrizJacobiana2);
disp("Inversa Jacobiana:");
disp(inv(matrizJacobiana2)); // calcula inversa
disp("Producto J*J^-1");
disp(matrizJacobiana2*inv(matrizJacobiana2));
*/
