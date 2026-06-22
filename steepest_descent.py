import numpy as np

A = np.array([
    [8, 3, 1, 2],
    [3, 7, 1, 2],
    [1, 2, 10, 4],
    [4, 1, 2, 10]
], dtype=float)

b = np.array([8, 14, 5, 4], dtype=float)

x = np.zeros(4, dtype=float)

for k in range(1, 3):
    print(f"--- Iteration {k} ---")
    r = b - A @ x
    print(f"r^({k-1}) = {r}")
    
    r_dot_r = np.dot(r, r)
    Ar = A @ r
    Ar_dot_r = np.dot(Ar, r)
    
    alpha = r_dot_r / Ar_dot_r
    print(f"alpha_{k} = {r_dot_r} / {Ar_dot_r} = {alpha}")
    
    x = x + alpha * r
    print(f"x^({k}) = {x}")
    
    # Calculate residual for the new x to show in part b
    r_new = b - A @ x
    norm_r_new = np.linalg.norm(r_new, 2)
    print(f"||r^({k})||_2 = {norm_r_new}")
