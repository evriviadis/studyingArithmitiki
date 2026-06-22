import numpy as np
import matplotlib.pyplot as plt
import sympy as sp

x = sp.Symbol('x')
f = sp.cos(sp.pi * x)
phi = [1, x, x**2]

A = sp.Matrix([[sp.integrate(phi[i]*phi[j], (x, 0, 1)) for j in range(3)] for i in range(3)])
b = sp.Matrix([sp.integrate(f*phi[i], (x, 0, 1)) for i in range(3)])
c = A.inv() * b

p = c[0] + c[1]*x + c[2]*x**2

f_func = sp.lambdify(x, f, 'numpy')
p_func = sp.lambdify(x, p, 'numpy')

x_vals = np.linspace(0, 1, 400)
f_vals = f_func(x_vals)
p_vals = p_func(x_vals)

plt.figure(figsize=(10, 6))
plt.plot(x_vals, f_vals, label='f(x) = cos(πx)')
plt.plot(x_vals, p_vals, label='p(x)', linestyle='--')
plt.title('Approximation of f(x) by p(x)')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.grid(True)
plt.savefig('plot.png')
print("Plot saved to plot.png")
