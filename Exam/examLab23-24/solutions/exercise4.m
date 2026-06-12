% Exercise 4
f = @(t, y) -2 * t * y^2;
tspan = [0, 2];
y0 = 1;

% Solve ODE using ode45
[t, y] = ode45(f, tspan, y0);

% Analytical solution
y_exact = 1 ./ (1 + t.^2);

% Calculate the infinity norm of the error
error_inf = norm(y - y_exact, inf);

fprintf('The error with the infinity norm is: %e\n', error_inf);
