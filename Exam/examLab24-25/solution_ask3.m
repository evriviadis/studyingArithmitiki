% Άσκηση 3
f = @(x) 2 ./ (1 + x.^2);

% Κόμβοι παρεμβολής
x_nodes = [-1, 0, 1];
y_nodes = f(x_nodes);

% Υπολογισμός ορισμένου ολοκληρώματος της f(x)
integral_f = integral(f, -1, 1);

% Υπολογισμός ορισμένου ολοκληρώματος της γραμμικής spline
% Σύμφωνα με τη σκέψη σου: Υπολογίζουμε τα Y της γραμμικής spline σε πυκνό πλέγμα
x_fine = linspace(-1, 1, 1000);
y_spline_fine = interp1(x_nodes, y_nodes, x_fine, 'linear');

% Στη συνέχεια υπολογίζουμε το ολοκλήρωμα της γραμμικής spline με την trapz στο πυκνό πλέγμα
integral_spline = trapz(x_fine, y_spline_fine);
fprintf('Το εμβαδόν κάτω από την f(x) στο [-1, 1] είναι: %.4f\n', integral_f);
fprintf('Το εμβαδόν κάτω από τη γραμμική spline στο [-1, 1] είναι: %.4f\n', integral_spline);

% Γραφική παράσταση
x_plot = linspace(-1, 1, 100);
y_f = f(x_plot);
y_spline_plot = interp1(x_nodes, y_nodes, x_plot, 'linear');

figure;
hold on; grid on;
plot(x_plot, y_f, 'b-', 'LineWidth', 1.5);
plot(x_plot, y_spline_plot, 'r--', 'LineWidth', 1.5);
plot(x_nodes, y_nodes, 'ko', 'MarkerSize', 8, 'MarkerFaceColor', 'k');
legend('f(x)', 'Γραμμική Spline', 'Σημεία Παρεμβολής');
title('Προσέγγιση της f(x) με γραμμική spline');
xlabel('x'); ylabel('y');
hold off;
