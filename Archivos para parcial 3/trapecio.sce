function in = trapecio(fun, x0, x1)
    deff("y=f(x)","y="+fun);
    h = x1-x0;
    in = h/2 * (f(x0)+f(x1));
endfunction

// ejemplo de uso

integral = trapecio("%e^x", 0, 100)
disp(integral)
