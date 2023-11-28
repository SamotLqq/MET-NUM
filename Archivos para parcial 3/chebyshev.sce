function r = Cheb(n)
    for k =0 :n-1
        r(k+1) = cos((%pi/2*(1+2*k))/n)
    end
endfunction
disp(Cheb(3))
function rab = Cheb_ab(n,a,b)
    r = Cheb(n)
    for k = 1:n
        rab(k) = (r(k)*(b-a)+(a+b))/2
    end
endfunction

disp(Cheb_ab(3,0,%pi/2))
