import sympy as sp
import numpy as np

def discrete_least_squares(x_pts):
    x = sp.Symbol('x')
    f = sp.cos(sp.pi * x)
    m = len(x_pts)
    
    y_pts = [f.subs(x, xi) for xi in x_pts]
    
    # normal equations
    # A * c = b
    # A_ij = sum(x_k**(i+j))
    # b_i = sum(y_k * x_k**i)
    
    A = sp.zeros(3, 3)
    b = sp.zeros(3, 1)
    
    for i in range(3):
        for j in range(3):
            A[i, j] = sum([xk**(i+j) for xk in x_pts])
        b[i] = sum([yk * xk**i for xk, yk in zip(x_pts, y_pts)])
        
    return A, b, A.inv() * b

# Example with 4 points
x_pts = [0, sp.Rational(1,3), sp.Rational(2,3), 1]
A, b, c = discrete_least_squares(x_pts)
print("A:", A)
print("b:", b)
print("c:", c)
