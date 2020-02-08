clc
funcprot(0)
format('v',10)
mat1 = input("Enter matrix[NxN]:")

function gauss_jordan(mat1)
    
    n = length(mat1(1,:));
    aug_mat1 = [mat1,eye(n,n)];
    
    //forward elimination
    for j=1:n-1
        for i=j+1:n
            aug_mat1(i,j:2*n) = aug_mat1(i,j:2*n)-aug_mat1(i,j)/aug_mat1(j,j)*aug_mat1(j,j:2*n)
        end
    end
    
    //backward elimination
    for j=n:-1:2
            aug_mat1(1:j-1,:) = aug_mat1(1:j-1,:)-aug_mat1(1:j-1,j)/aug_mat1(j,j)*aug_mat1(j,:)
    end
    
    //Diagonal Normalization
    for j=1:n
        aug_mat1(j,:) = aug_mat1(j,:)/aug_mat1(j,j);
    end
    
    inv_mat1 = aug_mat1(:,n+1:2*n);
    disp(inv_mat1,'Inverse of matrix');
    
endfunction

gauss_jordan(mat1);
