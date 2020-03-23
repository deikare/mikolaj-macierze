function [x, A,b] = gauss (A, b)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    n = length(b);
    for i = 1 : n
        wiersz_ktory_odejmujemy = A(i , :);
        for j = i + 1 : n
            wspolczynnik = A(j, i) / A(i, i);
            wiersz_od_ktorego_odejmujemy = A(j , :);
            A(j, :) = wiersz_od_ktorego_odejmujemy - wspolczynnik * wiersz_ktory_odejmujemy;
            b(j) = b(j) - wspolczynnik * b(i);
        end
    end
    
    x = uklad_U(A, b);
end

