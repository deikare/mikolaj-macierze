function [x] = uklad_L(L, b)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    n = length(b);
    
    x = zeros(n, 1);
    
    for j = 1 : n
        suma = 0;
        if j > 1
            for k = 1 : j-1
                suma = suma + L(j, k) * x(k);
            end
        end
        x(j) = (b(j) - suma) / L(j, j);
    end
end

