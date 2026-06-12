result = my_sin(pi/4);
realresult = sin(pi/4);

error = abs(realresult - result);
sxetiko = error / abs(realresult);

disp("This is my sin result:");
disp(result);
disp("This is the real result:");
disp(realresult);
disp("This is the error:");
disp(error);
disp("This is the relative error:");
disp(sxetiko);

% --- Τοπικές Συναρτήσεις (Local Functions) ---
% Πρέπει πάντα να μπαίνουν στο τέλος του αρχείου!

function y = my_sin(x)
    y = x - (x.^3)/factorial(3) + (x.^5)/factorial(5) - (x.^7)/factorial(7);
end