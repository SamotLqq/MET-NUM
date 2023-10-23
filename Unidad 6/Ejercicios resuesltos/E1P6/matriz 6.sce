/* a
 4.75   2.25   -0.25
 2.25   4.75    1.25
-0.25   1.25    4.75

C1 = {z E C: |z-4.75| <= 2.5}
C2 = {z E C: |z-4.75| <= 3.5}
C3 = {z E C: |z-4.75| <= 5}

asi, resulta que si z es un autovalor de A entonces:

|z-4.75| <= 5

y si z E R entonces

|z-4.75| <= 5 -> -5 <= z-4.75 <= 5 -> 0.25 <= z <= 9.75

b */
A = [4.75 2.25 -0.25; 2.25 4.75 1.25;-0.25 1.25 4.75]
av = spec(A)
disp(av)
