function in = simpson(fun, x0, x2)
    deff("y=f(x)","y="+fun);
    h = (x2-x0)/2;
    x1 = x0+h;
    in = (h/3) * (f(x0)+4*f(x1)+f(x2));
endfunction

// ejemplo de uso

integral = simpson("%e^x", 0, 100)
disp(integral)
