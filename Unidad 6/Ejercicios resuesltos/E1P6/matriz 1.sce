/* a
 1  0 0
-1  0 1
-1 -1 2

C1 = {z E C: |z-1| <= 0}
C2 = {z E C: |z| <= 2}
C3 = {z E C: |z - 2| <= 2}

asi, resulta que si z es un autovalor de A entonces:

|z-1| <= 0
o
|z| <= 2
o
|z-2| <= 2 

y si z E R entonces

|z-1| <= 0 -> 0 <= z-1 <= 0 -> 1 <= z <= 1 -> z = 1
o
|z| <= 2 -> -2 <= z <= 2
o
|z-2| <= 2 -> -2 <= z-2 <= 2 -> 0 <= z <= 4 

b */
A = [1 0 0; -1 0 1; -1 -1 2]
av = spec(A)
disp(av)
pc = poly(A, 'z')
disp(pc)
