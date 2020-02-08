clc;
funcprot(0);
format('v',10);
A = input("Coefficient matrix[NxN]:");
b = input("Constant matrix[Nx1]:");

function gaussian_elimination(A,b)
    
    [n,n1] = size(A);
    [m1,p] = size(b);
    if n~= n1 then
        error('Matrix A must be square');
        abort;
    elseif n~= m1
        error('Incompatible dimensions of A and b');
        abort;
    end
    
    augmented_matrix = [A b];
    n = length(b);
    
    //forward elimination
    for j=1:n-1
        for i=j+1:n
            augmented_matrix(i,j:n+1) = augmented_matrix(i,j:n+1) - augmented_matrix(i,j)/augmented_matrix(j,j)*augmented_matrix(j,j:n+1);
        end
    end
    
    //back substitution
    x = zeros(n,1);
    x(n) = augmented_matrix(n,n+1)/augmented_matrix(n,n);
    for i=n-1:-1:1
        x(i) = (augmented_matrix(i,n+1) - augmented_matrix(i,i+1:n)*x(i+1:n))/augmented_matrix(i,i);
    end
    disp(x(3),x(2),x(1),'Values of x , y , z ');
    
endfunction

gaussian_elimination(A,b);
