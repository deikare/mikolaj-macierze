function zad5
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    X = 0 : 10;
    Y = zeros(1, length(X));
    Y_wz = zeros(1, length(X));
    
    a = -0.5;
    b = 0.5;
    i = 1;
    
    
    for x = X
        eps = a + (b - a) * rand();
        Y(i) = 2 * x + eps;
        
        Y_wz(i) = 2 * x;
        i = i + 1;
    end
    
    figure;
    plot(X, Y, 'Color', 'r');
    hold on
    for i = 1 : length(X)
        X_akt = [X(i) X(i)];
        Y_akt = [Y_wz(i) + a, Y_wz(i) + b];
        line(X_akt, Y_akt, 'Color', 'b');
        
        X_akt = [X(i) - 0.05, X(i) + 0.05];
        Y_akt = [Y_wz(i) + a, Y_wz(i) + a];
        line(X_akt, Y_akt, 'Color', 'b');
        
        X_akt = [X(i) - 0.05, X(i) + 0.05];
        Y_akt = [Y_wz(i) + b, Y_wz(i) + b];
        line(X_akt, Y_akt, 'Color', 'b');
    end
    hold off;
    xlabel('x');
    ylabel('y');
end

