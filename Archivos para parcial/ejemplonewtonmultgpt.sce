// Punto inicial
x0 = 1;
y0 = 2;

// Tolerancia
epsilon = 1e-6;

// Máximo de iteraciones
max_iteraciones = 10;

// Inicialización
x = x0;
y = y0;

for iteracion = 1:max_iteraciones
    printf("Iteracion: %d, valor: %d - %d\n", iteracion, x, y)
    // Calcular F(x, y)
    f1 = x^2 + y^2;
    f2 = x * y;
    F = [f1; f2];
    
    // Calcular la matriz Jacobiana J(x, y)
    J = [2*x, 2*y; y, x];
    
    // Resolver J * delta = -F para delta
    delta = -J \ F;
    
    // Actualizar (x, y)
    x = x + delta(1);
    y = y + delta(2);
    
    // Verificar convergencia
    if norm(delta) < epsilon
        disp(['Convergencia alcanzada después de ', string(iteracion), ' iteraciones:']);
        disp(['x = ', string(x)]);
        disp(['y = ', string(y)]);
        break;
    end
end

if iteracion == max_iteraciones
    disp('El método no convergió después de 10 iteraciones.');
end
