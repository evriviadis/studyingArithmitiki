function [error_norm, rel_error] = ask3()
    % Exercise 3
    % Να υλοποιήσετε μια συνάρτηση με όνομα ask3 που να υπολογίζει ένα πολυώνυμο
    % 2ου βαθμού που προσεγγίζει τα παρακάτω σημεία.

    x = [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0];
    y = [-0.447, 1.978, 3.28, 6.16, 7.08, 7.34, 7.66, 9.56, 9.48, 9.30, 11.2];
    
    % Προσαρμογή πολυωνύμου 2ου βαθμού (fit a 2nd degree polynomial)
    p = polyfit(x, y, 2);
    
    % Υπολογισμός τιμών του πολυωνύμου στα σημεία x
    y_approx = polyval(p, x);
    
    % Γραφική παράσταση
    figure;
    plot(x, y, 'b*', 'DisplayName', 'Δεδομένα', 'MarkerSize', 8);
    hold on;
    
    % Ομαλή καμπύλη για το πολυώνυμο
    x_smooth = linspace(min(x), max(x), 100);
    y_smooth = polyval(p, x_smooth);
    plot(x_smooth, y_smooth, 'r--', 'DisplayName', 'Πολυώνυμο 2ου βαθμού', 'LineWidth', 1.5);
    
    hold off;
    legend('show', 'Location', 'northwest');
    title('Προσέγγιση Δεδομένων με Πολυώνυμο 2ου Βαθμού');
    xlabel('x');
    ylabel('y');
    grid on;
    
    % Υπολογισμός σφαλμάτων
    error_vector = y - y_approx;
    error_norm = norm(error_vector); % Ευκλείδεια νόρμα
    rel_error = error_norm / norm(y); % Σχετικό σφάλμα
    
    fprintf('Ευκλείδεια Νόρμα Σφάλματος: %f\n', error_norm);
    fprintf('Σχετικό Σφάλμα: %f\n', rel_error);
end
