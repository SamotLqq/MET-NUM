//item a
function [X,A_aum] = Gauss_amp(A,B)
    
   [nA, mA] = size(A);
   [nB, mB] = size(B);
   
   if nA<>mA then
        error('gausselim - La matriz A debe ser cuadrada');
        abort;
    elseif mA<>nB then
        error('gausselim - dimensiones incompatibles entre A y b');
        abort;
    end;
   
   // Matriz aumentada
   A_aum = [A,B];
   
   // Eliminación progresiva
   for i = 1:(nA-1) do
      for j = (i+1):nA do // las filas j-esimas abajo de i.
         mji = A_aum(j,i)/A_aum(i,i) 
         A_aum(j,i)=0 
         A_aum(j,(i+1):(mA+mB)) = A_aum(j,(i+1):(mA+mB)) - mji*A_aum(i,(i+1):(mA+mB)) // resta a la fila j-esima de A_aum la fila iesima por multiplicador mji
      end
   end
       
   // Sustitución regresiva
   X(nA,1:mB) = A_aum(nA,(nA+1):(nA+mB))/A_aum(nA,nA)
   
   for i = (nA-1):-1:1 do
      X(i,1:mB) = (A_aum(i,(mA+1):(mA+mB)) - (A_aum(i,(i+1):mA)*X((i+1):mA,1:mB)))/A_aum(i,i)
   end
endfunction
