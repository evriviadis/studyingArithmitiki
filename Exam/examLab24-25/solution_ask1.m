% Άσκηση 1
X = [-2, 0, 1, 2, 4, 5];
Y = [0, 1, 0, -2, -1, -2];

% 1. Υπολογισμός ευθείας ελαχίστων τετραγώνων (τοπική οδός)
p_line = polyfit(X, Y, 1);
x_plot = linspace(min(X)-1, max(X)+1, 100);
y_line = polyval(p_line, x_plot);

% Γέφυρα στην ευθεία
x_bridge = 3;
y_bridge_line = polyval(p_line, x_bridge);

% 2. Ακριβής διέλευση (Παρεμβολή Spline για την τελική οδό)
y_spline = spline(X, Y, x_plot);
y_bridge_spline = spline(X, Y, x_bridge);

% Γραφικές παραστάσεις
figure;
hold on; grid on;
% Οικίες
plot(X, Y, 'ko', 'MarkerSize', 8, 'MarkerFaceColor', 'k');
% Τοπική οδός (ευθεία)
plot(x_plot, y_line, 'b-', 'LineWidth', 1.5);
% Τελική οδός (spline)
plot(x_plot, y_spline, 'g-', 'LineWidth', 1.5);
% Ποτάμι (x = 3)
plot([3 3], [min(y_spline)-1 max(y_spline)+1], 'c--', 'LineWidth', 1.5);

% Σημεία γέφυρας
plot(x_bridge, y_bridge_line, 'rs', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
plot(x_bridge, y_bridge_spline, 'ms', 'MarkerSize', 10, 'MarkerFaceColor', 'm');

% Ετικέτες
text(-2, 0.2, 'A', 'FontSize', 12);
text(0, 1.2, 'B', 'FontSize', 12);
text(1, 0.2, '\Gamma', 'FontSize', 12);
text(2, -1.8, '\Delta', 'FontSize', 12);
text(4, -0.8, 'E', 'FontSize', 12);
text(5, -1.8, '\Sigma T', 'FontSize', 12);

text(x_bridge+0.2, y_bridge_line, 'Γέφυρα (Ευθεία)', 'Color', 'r');
text(x_bridge+0.2, y_bridge_spline, 'Πραγματική Γέφυρα', 'Color', 'm');
text(3.1, max(Y), 'Ποτάμι', 'Color', 'c');

xlabel('x'); ylabel('y');
title('Τοπική Οδός και Πραγματική Οδός');
legend('Οικίες', 'Τοπική Οδός (Ευθεία)', 'Πραγματική Οδός (Spline)', 'Ποτάμι', 'Γέφυρα (Ευθεία)', 'Πραγματική Γέφυρα', 'Location', 'best');
hold off;

fprintf('1. Η γέφυρα στην ευθεία θα κατασκευαστεί στο σημείο: (3, %.4f)\n', y_bridge_line);
fprintf('2. Η πραγματική γέφυρα θα κατασκευαστεί στο σημείο: (3, %.4f)\n', y_bridge_spline);
