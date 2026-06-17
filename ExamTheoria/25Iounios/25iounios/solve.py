import numpy as np
import math

# Exercise 1
def ex1():
    print("--- Exercise 1 ---")
    x0 = 0.4
    x1 = 0.3
    a = math.pi
    iters = 0
    x_prev = x0
    x_curr = x1
    print(f"x0 = {x_prev:.6f}")
    print(f"x1 = {x_curr:.6f}")
    while True:
        x_next = x_curr + x_prev - a * x_curr * x_prev
        iters += 1
        print(f"Iter {iters}: x_{iters+1} = {x_next:.6f}")
        if abs(x_next - x_curr) <= 1e-3:
            break
        x_prev = x_curr
        x_curr = x_next
    print(f"Total iterations: {iters}\n")

# Exercise 3
def ex3():
    print("--- Exercise 3 ---")
    E = [0.01625378, 0.00414917, 0.00104319, 0.00026112]
    for i in range(len(E)-1):
        ratio = E[i] / E[i+1]
        order = math.log2(ratio)
        print(f"Ratio E_{i+1}/E_{i+2} = {ratio:.6f}, a = {order:.6f}")
    print()

# Exercise 4
def ex4():
    print("--- Exercise 4 ---")
    # N=8
    N = 8
    h = (2-1)/N
    x = np.linspace(1, 2, N+1)
    f = x * np.log(x)
    simpson = (h/3) * (f[0] + 4*np.sum(f[1:-1:2]) + 2*np.sum(f[2:-2:2]) + f[-1])
    print(f"Simpson approximation for N=8: {simpson:.8f}\n")

# Exercise 5
def ex5():
    print("--- Exercise 5 ---")
    x = np.array([0.0, 0.0, 0.0])
    iters = 0
    while True:
        x_new = np.zeros(3)
        x_new[0] = (9 + 2*x[1] - x[2]) / 10
        x_new[1] = (10 - x[0] - x[2]) / 8
        x_new[2] = (18 - x[0] + 3*x[1]) / 20
        
        diff_norm = np.sum(np.abs(x_new - x))
        curr_norm = np.sum(np.abs(x_new))
        rel_diff = diff_norm / curr_norm
        iters += 1
        
        print(f"Iter {iters}: x = [{x_new[0]:.6f}, {x_new[1]:.6f}, {x_new[2]:.6f}], rel_diff = {rel_diff:.6f}")
        if rel_diff <= 1e-2:
            break
        x = x_new
    print(f"Total iterations: {iters}\n")

# Exercise 6
def ex6():
    print("--- Exercise 6 ---")
    x0 = 0
    y0 = -1
    h = 0.1
    f = lambda x, y: y + x**2 + x - 1
    k1 = f(x0, y0)
    k2 = f(x0 + h, y0 + h*k1)
    y1 = y0 + (h/2)*(k1 + k2)
    print(f"k1 = {k1:.6f}")
    print(f"k2 = {k2:.6f}")
    print(f"y1 approx = {y1:.6f}")
    
    y_exact = math.exp(0.1) - (0.1)**2 - 3*(0.1) - 2
    print(f"y_exact = {y_exact:.8f}")
    rel_error = abs(y1 - y_exact) / abs(y_exact)
    print(f"rel_error = {rel_error:.6e}\n")

if __name__ == "__main__":
    ex1()
    ex3()
    ex4()
    ex5()
    ex6()
