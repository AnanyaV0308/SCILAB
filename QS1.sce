a=input("Enter the elements of matrix A")
disp(a,"The coefficients of matrix A")
S=a(2,1)/a(1,1)
R=a(3,1)/a(1,1)
for i=1:3
    a(2,i)=a(2,i)-S*a(1,i)
    a(3,i)=a(3,i)-R*a(1,i)
end
T=a(3,2)/a(2,2)
for j=1:3
    a(3,j)=a(3,j)-T*a(2,j)
end
U=a
L=[1 0 0;S 1 0;R T 1]
disp(U,"Upper triangular matrix")
disp(L,"Lower triangular matrix")
