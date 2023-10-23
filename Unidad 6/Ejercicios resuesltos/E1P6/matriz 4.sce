/* a
    4     -1    0
   -1      4   -1
   -1     -1    4

C1 = {z E C: |z-4| <= 1}
C2 = {z E C: |z-4| <= 2}
C3 = {z E C: |z-4| <= 2}

asi, resulta que si z es un autovalor de A entonces:

|z-4| <= 2 

y si z E R entonces

|z-4| <= 2 -> -2 <= z-4 <= 2 -> 2 <= z <= 6

b */
A = [4 -1 0; -1 4 -1; -1 -1 4]
av = spec(A)
disp(av)
