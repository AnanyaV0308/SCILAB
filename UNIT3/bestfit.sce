clear;  
clc;

n = input('Enter the number of equations:')

for i=1:n
    for j=1:2
        a(i,j) = input("Enter the values:") 
    end
end
disp(a)

for i=1:n
    b(i) = input("Enter the values:")
end
disp(b)

function least_squares(a,b)
    x = (a'*a)\(a'*b);
    disp(x, 'x=');
    C = x(1,1);
    D = x(2,1);
    disp(C, 'C=');
    disp(D, 'D=');
    disp('The line of best fit is b=C + Dt');
endfunction
