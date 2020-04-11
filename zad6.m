function zad6
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    X = -20 : 0.1 : 20;
    Y = -20 : 0.1 : 20;
    R = zeros(length(X), length(Y));
    
    for i = 1 : length(X)
        for j = 1 : length(Y)
            R(i, j) = sin(X(i)) + cos(Y(j));
        end
    end
    figure;
    surf(X, Y, R);
    xlabel('x');
    ylabel('y');
    zlabel('r');
end

