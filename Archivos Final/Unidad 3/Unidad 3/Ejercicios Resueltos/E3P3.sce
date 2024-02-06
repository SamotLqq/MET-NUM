// e1p3 a

function resultado=coseno_iterativo(cantidad, valor)
    resultado = cos(valor)
    while cantidad > 1
        cantidad = cantidad - 1
        resultado = cos(resultado)
    end        
endfunction

// al aplicar el coseno reiteradas veces al mismo valor el resultado es 0.7390851
// lo que sucede es que cos(0.7390851) = 0.7390851 y es el único valor entre
// -1 y 1 (recorrido del coseno) que verifica esto.
// ademas dado x E [-1,1] cos(x) < 0.7390851 si x > 0.7390851
// y cos(x) > 0.7390851, además cos(x) > 0 para todos los valores del
// intervalo (esto es relevante pues es el recorrido del cos, es decir que
// al aplicarlo reiteradas veces al mismo valor a la segunda iteración ya
// estaremos trabajando en ese intervalo), 
// asi, aplicarlo reiteradas veces siempre tiende
// a 0.7390851
