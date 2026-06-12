function y = ask1(x)
    % Υπολογισμός της εκθετικής συνάρτησης χρησιμοποιώντας
    % τους 5 πρώτους όρους της ακολουθίας Taylor.
    y = 1 + x + x^2/factorial(2) + x^3/factorial(3) + x^4/factorial(4);
end
