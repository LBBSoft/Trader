function [ output ] = trees_mask(trees,N3,objective_function,best)
[m,n]=size(trees);
for i=1:N3
    k=randi(m);
    r=randi(n-3);
    tmp=trees(k,:);
    for j=1:r
        f=randi(n-3);
        tmp(1,f)=best(1,f);
    end
    tmp=benefit(tmp,objective_function);
    if tmp(1,n)<trees(k,n)
        trees(k,:)=tmp;
    end
end
output=trees;
end

