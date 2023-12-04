function in = trapecio_comp(fun, a, b, n)
    deff("y=f(x)","y="+fun);
    h = (b-a)/n;
    in = 1 / 2 * f(a) + 1/2 * f(b);
    for i=1:n-1
        in = in + f(a+i*h);
    end
    in = in * h;
endfunction

// ejemplo de uso

integral = trapecio_comp("%e^x", 0, 100, 100000)
disp(integral)
