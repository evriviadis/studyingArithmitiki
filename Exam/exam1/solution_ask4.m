function ask4()
    % Exercise 4
    % Spline παρεμβολή για δεδομένα τάσης - ρεύματος
    
    V = [-1.00, 0.00, 1.27, 2.55, 3.82, 4.92, 5.02];
    I = [-14.58, 0.00, 0.00, 0.00, 0.00, 0.88, 11.17];
    
    figure;
    % Γραφική παράσταση των σημείων με πράσινους αστερίσκους
    plot(V, I, 'g*', 'DisplayName', 'Δεδομένα', 'MarkerSize', 8);
    hold on;
    
    % Δημιουργία 500 σημείων στο διάστημα [-1, 5.02]
    V_spline = linspace(-1, 5.02, 500);
    
    % Υπολογισμός τιμών της spline για τα 500 σημεία
    I_spline = spline(V, I, V_spline);
    
    % Γραφική παράσταση της spline με κόκκινη συνεχή γραμμή
    plot(V_spline, I_spline, 'r-', 'DisplayName', 'Spline Παρεμβολή', 'LineWidth', 1.5);
    
    % Υπολογισμός ρεύματος για τάση 2.8 Volt και 3.5 Volt
    V_eval = [2.8, 3.5];
    I_eval = spline(V, I, V_eval);
    
    % Εμφάνιση των υπολογισμένων σημείων στο γράφημα (προαιρετικό, για επιβεβαίωση)
    plot(V_eval, I_eval, 'ko', 'MarkerFaceColor', 'k', 'DisplayName', 'Υπολογισμένες Τιμές (2.8V, 3.5V)');
    
    hold off;
    legend('show', 'Location', 'northwest');
    title('Spline Παρεμβολή Τάσης - Ρεύματος');
    xlabel('Τάση (V)');
    ylabel('Ρεύμα (A)');
    grid on;
    
    % Εμφάνιση αποτελεσμάτων
    fprintf('Υπολογισμένο ρεύμα για τάση 2.8V: %f A\n', I_eval(1));
    fprintf('Υπολογισμένο ρεύμα για τάση 3.5V: %f A\n', I_eval(2));
end
