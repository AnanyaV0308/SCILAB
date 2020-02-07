c=input("Enter the elements of matrix A")
disp(c,"The coefficients of matrix A")
S=c(2,1)/c(1,1)
R=c(3,1)/c(1,1)
for i=1:3
    c(2,i)=c(2,i)-S*c(1,i)
    c(3,i)=c(3,i)-R*c(1,i)
end
T=c(3,2)/c(2,2)
for j=1:3
    c(3,j)=c(3,j)-T*c(2,j)
end
U=c
L=[1 0 0;S 1 0;R T 1]
disp(U,"Upper triangular matrix")
disp(L,"Lower triangular matrix")
