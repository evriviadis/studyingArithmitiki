diaf = @(t, y) -0.5 *y *sin(t)

y0 = 5;

[t, y] = ode45(diaf, [0, 4], y0);

y_exact =5 * exp(0.5 * (cos(t) - 1))


sfalma = norm(y - y_exact, inf)