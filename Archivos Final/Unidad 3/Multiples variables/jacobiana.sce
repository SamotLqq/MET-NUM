// Calcular la matriz Jacobiana nxm para all n,m
function J = calcularJacobiana(func, X)
    n = length(func(X)); // Número de componentes de la función
    m = length(X); // Número de variables independientes

    J = zeros(n, m); // Inicializar la matriz Jacobiana

    // Calcular las derivadas parciales
    for i = 1:n
        for j = 1:m
            h = 1e-6; // Tamaño del paso para la aproximación de la derivada
            Xh = X;
            Xh(j) = X(j) + h
            J(i, j) = (func(Xh)(i) - func(X)(i)) / h;
        end
    end
endfunction
/*
// Ejemplo de uso:
// Definir las funciones
deff("y = f1(x)", "y = x(1) + x(2)")
deff("y = f2(x)", "y = x(1)^2 + x(2)^2")
deff("y = f3(x)", "y = x(1)^3 + x(2)^3")

// Definir funcion vectorial
function faa = func_vect(X)
    faa(1) = f1(X)
    faa(2) = f2(X)
    faa(3) = f3(X)
endfunction

// Crear un vector de entrada
X = [178; 209]

// Calcular la matriz Jacobiana en el punto x
jacobiana = calcularJacobiana(func_vect, X);
// Resultado obtenido:
disp('Matriz Jacobiana:');
disp(jacobiana);
*/
