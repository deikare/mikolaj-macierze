function [L, U] = LU(A)
    n = length(A);
    
    L = eye(n);
    U = A;
    
    for i = 1 : n
        wiersz_odejmowany = U(i, :);
        for j = i + 1 : n
            wsp = U(j, i) / U(i, i);
            L(j, i) = wsp;
            
            wiersz_ponizej = U(j, :);
            wiersz_ponizej = wiersz_ponizej - wsp * wiersz_odejmowany;
            U(j, :) = wiersz_ponizej;
        end
    end
end

