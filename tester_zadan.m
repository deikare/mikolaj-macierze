%% zad 1
disp('zad1');
L = [-2 0 0; 1 3 0; 4 2 2];
b = [2; 5; 2];

x = uklad_L(L, b)
%% sprawdzenie
L * x

%% zad 2
disp('zad2');
U = [3 -4 3; 0 2 3; 0 0 -2];
b = [23; 2; -4];

x = uklad_U(U, b)
U * x

%% zad 3
disp('zad3');
A = [2 -3 -1; -4 10 5; 8 -4 4];
b = [9; -29; 12];

[x, A, b] = gauss(A, b)
