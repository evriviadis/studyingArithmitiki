% test_ask1.m
x_val = sqrt(2);

% Υπολογισμός με την δική μας συνάρτηση ask1
y_approx = ask1(x_val);

% Υπολογισμός με την ενσωματωμένη συνάρτηση exp του MATLAB
y_exact = exp(x_val);

% Σφάλμα και σχετικό σφάλμα
err = abs(y_exact - y_approx);
rel_err = err / abs(y_exact);

% Εμφάνιση αποτελεσμάτων
fprintf('Προσέγγιση του exp(sqrt(2)) με την ask1: %f\n', y_approx);
fprintf('Ακριβής τιμή από την exp() του MATLAB: %f\n', y_exact);
fprintf('Απόλυτο σφάλμα: %f\n', err);
fprintf('Σχετικό σφάλμα: %f\n', rel_err);
