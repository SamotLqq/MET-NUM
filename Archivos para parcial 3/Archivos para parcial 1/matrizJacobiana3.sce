// Calcular la matriz Jacobiana
function J = calcularJacobiana3(func, x0, y0, z0)
    n = length(func(x0, y0, z0)); // Número de componentes de la función
    m = length([x0, y0, z0]); // Número de variables independientes

    J = zeros(n, m); // Inicializar la matriz Jacobiana

    // Calcular las derivadas parciales
    for i = 1:n
        for j = 1:m
            h = 1e-6; // Tamaño del paso para la aproximación de la derivada
            x = [x0, y0, z0];
            x(j) = x(j) + h;
            J(i, j) = (func(x(1), x(2), x(3))(i) - func(x0, y0, z0)(i)) / h;
        end
    end
endfunction

/*
// Ejemplo de uso:
// Definir la función f(x, y, z)
function f = miFuncion3(x, y, z)
    f(1) = x + y + z; // Componente 1 de la función
    f(2) = x^2 + y^2 + z^2; // Componente 2 de la función
    f(3) = sin(x) + cos(y) + exp(z); // Componente 3 de la función
endfunction
// Punto en el que se evalúa la matriz Jacobiana
x0 = 1;
y0 = 2;
z0 = 3;
// Calcular la matriz Jacobiana en el punto (x0, y0, z0)
matrizJacobiana3 = calcularJacobiana3(miFuncion3, x0, y0, z0);
// Resultado obtenido:
disp('Matriz Jacobiana:');
disp(matrizJacobiana3);
disp("Inversa Jacobiana:");
disp(inv(matrizJacobiana3));
disp("Producto J*J^-1");
disp(matrizJacobiana3*inv(matrizJacobiana3));
*/
