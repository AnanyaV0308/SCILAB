clc
funcprot(0)   
format('v',10)
mat1 = input("Enter a matrix[NxN]: ")

function lu_decomposition(mat1)
    
    U = mat1;
    disp(mat1,"Matrix A = ")
    m = det(U(1,1)); 
    n = det(U(2,1));
    x=n/m;
    
    U(2,:) = U(2,:) - U(1,:)/(m/n);
    n= det(U(3,1));
    y=n/m;
    
    U(3,:) = U(3,:) - U(1,:)/(m/n);
    m = det(U(2,2));
    n = det(U(3,2));
    z = n/m;
    
    U(3,:) = U(3,:) - U(2,:)/(m/n);
    disp(U,'Upper traingular Matrix = ')
    
    L = [1,0,0;x,1,0;y,z,1];
    disp(L,'Lower traingular Matrix = ')
    
endfunction

lu_decomposition(mat1);
