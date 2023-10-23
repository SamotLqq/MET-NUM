/* a
    1     0    0
-0.25     0 0.25
-0.25 -0.25    2

C1 = {z E C: |z-1| <= 0}
C2 = {z E C: |z| <= 0.5}
C3 = {z E C: |z - 2| <= 0.5}

asi, resulta que si z es un autovalor de A entonces:

|z-1| <= 0
o
|z| <= 0.5
o
|z-2| <= 2.25 

y si z E R entonces

|z-1| <= 0 -> 0 <= z-1 <= 0 -> 1 <= z <= 1 -> z = 1
o
|z| <= 0.5 -> -0.5 <= z <= 0.5
o
|z-2| <= 0.5 -> -0.5 <= z-2 <= 0.5 -> 1.5 <= z <= 2.5

b */
A = [1 0 0; -0.25 0 0.25; -0.25 -0.25 2]
av = spec(A)
disp(av)
