//Interpolacion Polinomial

//Metod0 de Lagrange

function y=Lk(x, k)
    [xn, xm] = size(x);
    r = [x(1:k-1), x(k+1:xm)];
    p = poly(r, "x", "roots");
    pk = horner(p, x(k));
    y = p/pk;
endfunction

function z = intLagrange(x, y)
    xm = size(x)(2);
    pol = 0;
    for k=1:xm
        pol = pol + Lk(x, k) * y(k);        
    end
    z = pol;
endfunction

//Metod0 de Newton

//Diferencias divididas
function w= DD(x, y) //vectores x, f(x);
    n=length(x);
    if n==1 then
        w=y(1);
    else
        w=(DD(x(2:n),y(2:n))-DD(x(1:n-1), y(1:n-1)))/(x(n)-x(1));
    end
endfunction

//Polinomio interpolante con Newton

function p = DD_newton(x, y) //vectores x, f(x);
    r = poly(0, "x");
    p = 0;
    n=length(x);
    for i=n:(-1):2
        p = (p+DD(x(1:i), y(1:i))) * (r-x(i-1));
    end
    p = p + y(1);
    
endfunction

//devuelve las raices del polinomio de Chebyshev de grado n
function r=cheby(n)
    for k=0:n-1
        r(k+1) = cos((%pi/2*(2*k + 1))/n);
    end
endfunction


//devuelve las raices del polinomio de Chebyshev de grado n con
//una transformacion lineal en un intervalo a, b
//ej 11 practica 7
function rab=cheby_ab(n, a, b)
    r = cheby(n);
    for k=1:n
        rab(k) = ((b+a) + r(k) * (b-a))/2;
    end
endfunction




function [x,a] = gausselimPP(A,b)  
    [nA,mA] = size(A) 
    [nb,mb] = size(b)
    a = [A b]; 
    n = nA;    
    for k=1:n-1
        kpivot = k; amax = abs(a(k,k)); 
        for i=k+1:n
            if abs(a(i,k))>amax then
                kpivot = i; amax = a(i,k);
            end;
        end;
        temp = a(kpivot,:); a(kpivot,:) = a(k,:); a(k,:) = temp;
        
        for i=k+1:n
            for j=k+1:n+1
                a(i,j) = a(i,j) - a(k,j)*a(i,k)/a(k,k);
            end;
            for j=1:k        
                a(i,j) = 0;  
            end          
        end;
    end;
    x(n) = a(n,n+1)/a(n,n);
    for i = n-1:-1:1
        sumk = 0
        for k=i+1:n
            sumk = sumk + a(i,k)*x(k);
        end;
        x(i) = (a(i,n+1)-sumk)/a(i,i);
    end;
endfunction




function [p, err] = mincuad(x,y,n) //polinomio de aproximacion por minimos cuadrados de grado n
    m = length(x);
    A= ones(m,1);
    for j=1:n
        A = [A,(x')**j];
    end
    [x,a] = gausselimPP(A'*A, A'*y');
    p = poly(x, "x", "coeff");
    err = norm(y' - A*x);
endfunction


//EXTRA

//ej1 p7 complementaria
function [p, err] = ej1p7c(x,y) //polinomio de aproximacion por minimos cuadrados de grado n
    m = length(x);
    A= [(x)'**2,(x)'**3,(x)'**4];
    [x,a] = gausselimPP(A'*A, A'*y');
    p = poly([0;0;x], "x", "coeff");
    err = norm(y' - A*x);
endfunction










//Para ejercicio 5 P7 interpolacion polinomica;
/*x=[1,2,3];
L1=Lk(x,1);
L2=Lk(x,2);
L3=Lk(x,3);
c1=horner(L1, 2.5)*3;
c2=horner(L2, 2.5)*3;
c3=horner(L3, 2.5);
k = (3 - c1 - c2)/c3;
xx=[0 1 2 3];
yy = [1 3 3 k];
p = intLagrange(xx,yy);
res = horner(p,2.5);
*/
