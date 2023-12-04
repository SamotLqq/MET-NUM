funcprot(0); // apaga los Warning por redefinir funciones

function in = trapecio(fun, x0, x1)
    deff("y=f(x)","y="+fun);
    h = x1-x0;
    in = h/2 * (f(x0)+f(x1));
endfunction

function in = simpson(fun, x0, x2)
    deff("y=f(x)","y="+fun);
    h = (x2-x0)/2;
    x1 = x0+h;
    in = (h/3) * (f(x0)+4*f(x1)+f(x2));
endfunction

function in = trapecio_comp(fun, a, b, n)
    deff("y=f(x)","y="+fun);
    h = (b-a)/n;
    in = 1 / 2 * f(a) + 1/2 * f(b);
    for i=1:n-1
        in = in + f(a+i*h);
    end
    in = in * h;
endfunction



function in = simpson_comp(fun, a, b, n)
    deff("y=f(x)","y="+fun);
    h = (b-a)/n;
    in = f(a) + f(b);
    for i = 1:n-1
        if (pmodulo(i,2) == 1) then
            in = in + 4 * f(a+i*h);
        else 
            in = in + 2 * f(a+i*h);            
        end
    end
    in = in * h / 3;
endfunction

function v = trapecio_comp_aux(fx, a, b, n)
    h = (b-a)/n;
    v = 1 / 2 * fx(a) + 1/2 * fx(b);
    for i=1:n-1
        v = v + fx(a+i*h);
    end
    v = h * v;
endfunction


function in=trapecio_doble_ext(fun, a, b, cx, dx, n, m) //int_a^b int_c(x)^d(x) f(x,y) dydx
    deff("z=f(x,y)","z="+fun);
    deff("z=c(x)","z="+cx);
    deff("z=d(x)","z="+dx);
    h= (b-a)/n;
    deff("z=fxa(y)", "z=f("+string(a)+",y)");
    deff("z=fxb(y)", "z=f("+string(b)+",y)");
    in = (trapecio_comp_aux(fxa, c(a), d(a),m))/2 + (trapecio_comp_aux(fxb, c(b), d(b),m))/2;
    for i = 1:n-1
        xi = a+i*h;
        deff("z=fxi(y)","z=f("+string(xi)+", y)");
        in = in + trapecio_comp_aux(fxi, c(xi), d(xi), m);
    end
    in = in * h;
endfunction

function v = simpson_comp_aux(fx, a, b, n)
    h = (b-a)/n;
    v = fx(a) + fx(b);
    for i = 1:n-1
        if (pmodulo(i,2) == 1) then
            v = v + 4 * fx(a+i*h);
        else 
            v = v + 2 * fx(a+i*h);           
        end
    end
    v = v * h / 3;
endfunction


function in=simpson_doble_ext(fun, a, b, cx, dx, n, m)
    deff("z=f(x,y)","z="+fun);
    deff("z=c(x)","z="+cx);
    deff("z=d(x)","z="+dx);
    h= (b-a)/n;
    deff("z=fxa(y)", "z=f("+string(a)+",y)");
    deff("z=fxb(y)", "z=f("+string(b)+",y)");
    in = simpson_comp_aux(fxa, c(a), d(a), m) + simpson_comp_aux(fxb, c(b), d(b), m);
    for i=1:n-1
        xi = a+i*h
        deff("z=fxi(y)","z=f("+string(xi)+", y)");
        if pmodulo(i,2) == 1 then
            in = in + 4*(simpson_comp_aux(fxi, c(xi), d(xi), m));
        else
            in = in + 2*(simpson_comp_aux(fxi, c(xi), d(xi), m));
        end
    end
    in = (h/3)*in;
endfunction

function er = err(a,b)//a valor real, b valor aproximado
    er = abs(a-b);
endfunction

function er = err_rel(a,b) //a valor real, b valor aproximado
    er = abs(a-b)/abs(a);
endfunction


//comando de scilab para integrar: integrate("fun", "x", a, b);
