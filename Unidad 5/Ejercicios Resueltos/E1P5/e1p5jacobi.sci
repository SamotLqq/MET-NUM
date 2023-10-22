exec("jacobi.sce","errcatch",0)
// sistema 1
// 1a no converge para cualquier x0 pues para x0 = [0 0 0] no converge
// 1c
A = [0 2 4; 1 -1 -1; 1 -1 2]
b = [0 0.375 0]'
x = jacobi(A,b,[0,0,0],10^-2)
disp(x)
disp(A*x')

// sistema 2
// 1a converge para cualquier valor x0 inicial ya que es diagonal dominante, pues 1 >= 1+0, 2 >= 2, 1.1 >= 1 
// 1c 
A = [1 -1 0; -1 2 -1; 0 -1 1.1]
b = [0 1 0]'
x = jacobi(A,b,[0 0 0],10^-2)
disp(x)
disp(A*x')
