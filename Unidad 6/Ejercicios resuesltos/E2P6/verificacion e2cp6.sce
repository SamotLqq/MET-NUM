p = poly([1 0 0 0 0 0 0 0 0 8 1], 'x', 'c')
disp(p)
raices = roots(p)
disp(abs(raices))

p2 = poly([1 -1 1 -1 1 -4 1], 'x', 'c')
disp(p2)
raices2 = roots(p2)
disp(abs(raices2)) // raices - 4 si se quiere ver la segunda desigualdad.
