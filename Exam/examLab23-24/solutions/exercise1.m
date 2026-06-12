% Exercise 1
years = [1961, 1971, 1981, 1991, 2001, 2011];
pop = [8388553, 8768641, 9740417, 10259900, 10964020, 10816286];

years_est = [1966, 1976, 1986, 1996, 2006];

% Linear piecewise
pop_linear_est = interp1(years, pop, years_est, 'linear');
% Cubic piecewise (using spline)
pop_cubic_est = spline(years, pop, years_est);

fprintf('Estimates with linear interpolation:\n');
disp(pop_linear_est);
fprintf('Estimates with cubic interpolation:\n');
disp(pop_cubic_est);

year_pred = 2021;
pop_real_2021 = 10482487;

% Extrapolation for 2021
pop_linear_pred = interp1(years, pop, year_pred, 'linear', 'extrap');
pop_cubic_pred = spline(years, pop, year_pred);

% Error calculation
error_linear = abs(pop_real_2021 - pop_linear_pred);
error_cubic = abs(pop_real_2021 - pop_cubic_pred);

% Relative error calculation
rel_error_linear = error_linear / pop_real_2021;
rel_error_cubic = error_cubic / pop_real_2021;

fprintf('Prediction 2021 (linear): %.0f\n', pop_linear_pred);
fprintf('Prediction 2021 (cubic): %.0f\n', pop_cubic_pred);
fprintf('Error 2021 (linear): %.0f, Relative: %f\n', error_linear, rel_error_linear);
fprintf('Error 2021 (cubic): %.0f, Relative: %f\n', error_cubic, rel_error_cubic);

% Plotting
figure;
hold on;

% Continuous plots for piecewise polynomials
x_plot = 1961:0.1:2021;
y_linear_plot = interp1(years, pop, x_plot, 'linear', 'extrap');
y_cubic_plot = spline(years, pop, x_plot);

plot(x_plot, y_linear_plot, 'b-', 'DisplayName', 'Linear Interpolation');
plot(x_plot, y_cubic_plot, 'r-', 'DisplayName', 'Cubic Interpolation');

% Known points with dots
plot(years, pop, 'ko', 'MarkerFaceColor', 'k', 'DisplayName', 'Known Population');

% Estimates with asterisks
plot(years_est, pop_linear_est, 'b*', 'DisplayName', 'Linear Estimates');
plot(years_est, pop_cubic_est, 'r*', 'DisplayName', 'Cubic Estimates');

% 2021 Real with square
plot(year_pred, pop_real_2021, 'ks', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'DisplayName', 'Real 2021');

% 2021 Predictions with rhombuses (diamonds)
plot(year_pred, pop_linear_pred, 'bd', 'MarkerSize', 8, 'MarkerFaceColor', 'b', 'DisplayName', 'Linear 2021');
plot(year_pred, pop_cubic_pred, 'rd', 'MarkerSize', 8, 'MarkerFaceColor', 'r', 'DisplayName', 'Cubic 2021');

xlabel('Year');
ylabel('Population');
title('Population of Greece');
legend('Location', 'best');
grid on;
hold off;
