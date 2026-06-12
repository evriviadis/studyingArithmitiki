% Exercise 2
m = 4*10^6;
lambda = 12*10^3;
u = 5*10^3;
g = 9.81;
v_target = 250;

% v(t) = u * ln(m / (m - lambda*t)) - g*t
% We need to find t such that v(t) - 250 = 0
f = @(t) u * log(m ./ (m - lambda * t)) - g * t - v_target;

% The burning lasts at most 2 minutes = 120 seconds.
% We search for the root in the interval [0, 120].
t_sol = fzero(f, [0, 120]);

fprintf('The rocket reaches 250 m/s at t = %.4f seconds.\n', t_sol);
