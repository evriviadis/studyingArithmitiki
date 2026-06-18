import numpy as np

x0 = np.array([1.0, -1.0])

def f(x):
    return np.array([
        2*x[0]**3 + 2*x[1]**2 - 4*x[0] + 1,
        4*x[0]**2 + 2*x[0] - 2*x[1]**3 - 2
    ])

def J(x):
    return np.array([
        [6*x[0]**2 - 4, 4*x[1]],
        [8*x[0] + 2, -6*x[1]**2]
    ])

print("Iteration 0")
print("x0 =", x0)
f0 = f(x0)
print("f(x0) =", f0)
J0 = J(x0)
print("J(x0) = \n", J0)
h0 = np.linalg.solve(J0, -f0)
print("h0 =", h0)
norm0 = np.linalg.norm(h0)
print("norm(h0) =", norm0)

x1 = x0 + h0
print("\nIteration 1")
print("x1 =", x1)
f1 = f(x1)
print("f(x1) =", f1)
J1 = J(x1)
print("J(x1) = \n", J1)
h1 = np.linalg.solve(J1, -f1)
print("h1 =", h1)
norm1 = np.linalg.norm(h1)
print("norm(h1) =", norm1)

x2 = x1 + h1
print("\nIteration 2")
print("x2 =", x2)
