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

// ejemplo de uso

integral = simpson_comp("%e^x", 0, 100, 100000)
disp(integral)
