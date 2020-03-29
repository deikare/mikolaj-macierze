function [L, U] = LU(A)
    n = length(A);
    
    B = eye(n);
    
    for i = 1 : n
        wiersz_odejmowany = A(i, :);
        for j = i + 1 : n
            wsp = A(j, i) / A(i, i);
            B(j, i) = wsp;
            
            wiersz_ponizej = A(j, :);
            wiersz_ponizej = wiersz_ponizej - wsp * wiersz_odejmowany;
            A(j, :) = wiersz_ponizej;
        end
    end
    
    L = B;
    U = A;
end

