clear; clc; close();

A = input("Enter the matrix(3x3): ");

disp(A,'A = ');

u0 = [1 1 1]';
disp(u0,'The initial vector is');
v = A*u0;
a = max(u0);
disp(a,'First approximation to Eigen Value is ');

while abs(max(v)-a)>0.002
    disp(v,'Current Eigen Vector is');
    a = max(v);
    disp(a,'Current Eigen Value is');
    u0 = v/max(v);
    v = A*u0;
end

format('v',4);
disp(max(v),'The largest eigen value is: ');
format('v',5);
disp(u0,'The corresponding eigen vector is: ');
