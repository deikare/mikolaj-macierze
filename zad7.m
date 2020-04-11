function Result = zad7
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    n = 100;
    M = zeros(n, n);
    for i = 1 : n
        for j = 1 : n
            M(i, j) = rand();
        end
    end
    
    Result = zeros(n, 1);
    for i = 1 : n
        suma = 0;
        for j = 1 : n
            if M(i, j) > 0.5
                suma = suma + M(i, j);
            end
        end
        Result(i) = suma;
    end
end

