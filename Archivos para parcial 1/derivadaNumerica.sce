// con cociente incremental
function valor=derivar(f,v,orden,h)
    if orden==0 then valor=f(v)
        else valor = (derivar(f,v+h,orden-1,h)-derivar(f,v,orden-1,h))/h
    end
endfunction
// con numderivate
function valor=derivadaNum(f, v, n, h)
    deff("y=Df0(x)","y="+f)
    if n==0 then valor = Df0(v)
    else
        for i=1:(n-1)
            deff("y=Df"+string(i)+"(x)", "y=numderivative(Df"+string(i-1)+",x,"+string(h)+",4)");
        end
        deff("y=Dfn(x)","y=numderivative(Df"+string(n-1)+",x,"+string(h)+",4)");
        valor = Dfn(v);
    end
endfunction

// ejemplo de ejecuciòn para 4ta derivada
// derivadaNum("x^3+x^2+1",1,4,0.0001)
