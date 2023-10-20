function [salida1, salida2, salidaN] = prueba(entrada1, entrada2, entradaN)
    salida1 = entrada1
    salida2 = entrada2
    salidaN = entradaN
endfunction

[a,b,c] = prueba(1,2,3)
disp(a,b,c)
