import numpy as np

# 1a: Jacobi Matrix Form
A_jac = np.array([[8, 4, 2], [2, 6, 4], [1, 1, 3]], dtype=float)
b_jac = np.array([8, 12, 15], dtype=float)

D_jac = np.diag(np.diag(A_jac))
L_jac = np.tril(A_jac, -1)
U_jac = np.triu(A_jac, 1)

D_inv = np.linalg.inv(D_jac)
T_j = - np.dot(D_inv, (L_jac + U_jac))
c_j = np.dot(D_inv, b_jac)

print("Jacobi Matrices:")
print("T_j = \n", T_j)
print("c_j = \n", c_j)

x = np.zeros(3)
for i in range(3):
    x = np.dot(T_j, x) + c_j
    print(f"Iter {i+1}: {x}")

# 1b: Gauss-Seidel Matrix Form
A_gs = np.array([[8, 1, -1], [1, -7, 2], [2, 1, 9]], dtype=float)
b_gs = np.array([8, -4, 12], dtype=float)

D_gs = np.diag(np.diag(A_gs))
L_gs = np.tril(A_gs, -1)
U_gs = np.triu(A_gs, 1)

DL_inv = np.linalg.inv(D_gs + L_gs)
T_gs = - np.dot(DL_inv, U_gs)
c_gs = np.dot(DL_inv, b_gs)

print("\nGauss-Seidel Matrices:")
print("T_gs = \n", T_gs)
print("c_gs = \n", c_gs)

x = np.zeros(3)
for i in range(3):
    x = np.dot(T_gs, x) + c_gs
    print(f"Iter {i+1}: {x}")

# 1c: SOR Matrix Form
w = 1.0 # placeholder
# X = (D + wL)^-1 [ (1-w)D - wU ] X + w(D+wL)^-1 b
