exec('LUcalc.sce', 'errcatch', 0)


// E7E8 APLICANDO EL ALGORITMO

A1 = [2 1 1 0;4 3 3 1;8 7 9 5;6 7 9 8]
A2 = [1.012 -2.132 3.104;-2.132 4.096 -7.013;3.104 -7.013 0.014]
A3 = [2.1756 4.0231 -2.1732 5.1967;-4.0231 6.0000 0 1.1973;-1.0000 5.2107 1.1111 0;6.0235 7.0000 0 4.1561]

[L,U,P] = lu_calculator(A3)
disp("Con lu nuestra")
disp(L)
disp(U)
disp(P)

[L2,U2,P2] = lu(A3)
disp("Con lu de scilab")
disp(L2)
disp(U2)
disp(P2)
