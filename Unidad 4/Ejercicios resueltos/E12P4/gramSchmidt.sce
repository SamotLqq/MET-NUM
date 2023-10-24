// A debe tener todas sus columnas li.

function q = gramSchmidt(A)
    [m, n] = size(A)
    q = zeros(m, n)
    for j = 1:n
        sumaj = 0
        for i=1:j-1
            sumaj = sumaj + ((A(:,j)')*(q(:,i)))*q(:,i)
        end
        w = A(:,j) - sumaj
        q(:,j) = w/norm(w)
    end
endfunction
/* ejemplo
A = [4 2 0; 0 0 2; 4 9 2]

q = gramSchmidt(A)

// sabemos que QR = A y que Q^T = Q^-1 -> R = Q^T*A
r = q'*A

// por lo tanto q*r deberia ser A

disp(q)
disp(r)
disp(q*r)

*/ 

