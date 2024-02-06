exec("gaussElimPPTrid.sce",'errcatch', 0)
exec("../E2P4/GaussElim.sce",'errcatch', 0)
exec("../E5P4/GaussElimPP.sce",'errcatch', 0)

A1 = [1 1 0 0;1 1 1 0;0 1 1 1; 0 0 1 1]
b1 = [2;3;3;2]

// 1 1 0 0
// 1 1 1 0
// 0 1 1 1
// 0 0 1 1

A2 = [2 2 0 0; 5 2 2 0; 0 5 2 2; 0 0 5 2]
b2 = [6;15;24;23]

// 2 2 0 0
// 5 2 2 0
// 0 5 2 2
// 0 0 5 2

A = [2 1 0 0;1 2 1 0;0 1 2 1;0 0 1 2]
b = [1;1;1;1]

// 2 1 0 0
// 1 2 1 0
// 0 1 2 1
// 0 0 1 2

// veamos las diferencias en operaciones y precisión entre gaussElim, gaussElimPP, gaussElimPPTri y gaussElimTri.
[x,a] = gausselim(A2, b2)
disp(x);disp(a);
[x,a] = gausselimPP(A2, b2)
disp(x);disp(a);
[x,a] = gausselimTri(A2, b2)
disp(x);disp(a);
[x,a] = gausselimPPTri(A2, b2)
disp(x);disp(a);

// podemos concluir que si aplicamos gauss a matrices tridiagonales nuestra
// mejor opción es get si los pivotes son convenientes y en caso contrario
// aplicar geppt es mejor la mejor opcion pues es preferible 
// hacer mas operaciones con numeros no propensos a errores que menos
// operaciones pero con numeros propensos a errores (ver apunte 2)
// de disminuir errores. Por otro lado las PP sirven para todas las matrices
// no singulares (y tri en el caso de geppt) mientras que si algun 
// pivot se anula en la diagonal las no pp no sirven.





