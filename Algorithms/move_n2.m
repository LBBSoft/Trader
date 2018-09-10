function [ output ] = move_n2(trees,N1,N2,range,objective_function,lambda)
[m,n]=size(trees);
for i=1:N2
    b1=randi(N1); 
    b3=randi(N1); 
    b2=randi(N1); 
    k=randi(m);
    d1=sqrt(power(trees(k,1:n-3)-trees(b1,1:n-3),2));
    d2=sqrt(power(trees(k,1:n-3)-trees(b2,1:n-3),2));
    d3=sqrt(power(trees(k,1:n-3)-trees(b3,1:n-3),2));
    x1=trees(b1,:);
    x2=trees(b2,:);
    if (d1>d3)
        x1=trees(b2,:);
        x2=trees(b3,:);
    end
    if (d2>d3)
        x1=trees(b1,:);
        x2=trees(b3,:);
    end
    x1=lambda*x1;
    x2=(1-lambda)*x2;
    y=x1+x2*0.4;
    tmp=y;
    tmp(1,1:n-3)=trees(k,1:n-3)+y(1,1:n-3);
    tmp(1,1:n-3)=min(tmp(1,1:n-3),range(2));
    tmp(1,1:n-3)=max(tmp(1,1:n-3),range(1));
    tmp=benefit(tmp,objective_function);
    if tmp(1,n)<trees(k,n)
        trees(k,:)=tmp;
    end
end
output=trees;
end

