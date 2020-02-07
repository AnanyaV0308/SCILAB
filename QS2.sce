a=input("Enter the coefficients")
disp(a,"The coefficients")
[m,n]=size(a)
for j=1:m-1
    for z=2:m
        if a(j,j)==0
            t=a(j,:)
            a(j,:)=a(z,:)
            a(z,:)=t
        end
    end
end
x=zeroes(1,m)
for s=m:-1:1
    c=0;
    for k=2:m
        c=c+a(s,k)*x(k)
    end
    x(s)=(a(s,n)-c)/a(s,s)
end
display("Gauss elimination method")
disp(a,"a:")
disp(x',"Ans:")
