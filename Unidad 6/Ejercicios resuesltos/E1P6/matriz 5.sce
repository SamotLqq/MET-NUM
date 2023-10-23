/* a
    3     2    1
    2     3    0
    1     0    3

C1 = {z E C: |z-3| <= 3}
C2 = {z E C: |z-3| <= 2}
C3 = {z E C: |z-3| <= 1}

asi, resulta que si z es un autovalor de A entonces:

|z-3| <= 3

y si z E R entonces

|z-3| <= 3 -> -3 <= z-3 <= 3 -> 0 <= z <= 6

b */
A = [3 2 1;2 3 0;1 0 3]
av = spec(A)
disp(av)
