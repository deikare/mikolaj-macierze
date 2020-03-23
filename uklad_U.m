function [x] = uklad_U(U, b)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    n = length(b);
    
    x = zeros(n, 1);
    
    for j = n : -1 : 1
        suma = 0;
        if j < n
            for k = n : -1 : j+1
                suma = suma + U(j, k) * x(k);
            end
        end
        x(j) = (b(j) - suma) / U(j, j);
    end
end

