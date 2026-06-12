% Exercise 3
x = [1.0, 1.5, 2.0, 2.5];
fx = [0.0, 1.25, 3.0, 5.25];

% Interpolating polynomial (degree = number of points - 1 = 3)
p = polyfit(x, fx, length(x)-1);

% Derivative of the polynomial
dp = polyder(p);

fprintf('Coefficients of the interpolation polynomial:\n');
disp(p);

fprintf('Coefficients of the derivative polynomial:\n');
disp(dp);
