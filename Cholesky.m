function [L] = Cholesky(A)
n = length(A);
    
    L = zeros(n, n);
    
    for i = 1 : n
        suma = 0;
        for k = 1 : i - 1
            suma = suma + power(L(i, k), 2);
        end
        L(i, i) = sqrt(A(i, i) - suma);
        
        for j = i + 1 : n
            suma = 0;
            for k = 1 : i - 1
                suma = suma + L(j, k) * L(i, k);
            end
            
            L(j, i) = (A(j, i) - suma) / L(i, i);
        end
    end
end

