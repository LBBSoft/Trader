function [ output ] = import_export(branches,objective_function)
[m,n]=size(branches);
for i=1:m
    tmp=branches(i,:);
    f=randi(m);
    f=branches(f,n-1);
    k=randi(n-3);
    for j=1:k
        h=randi(n-3);
        r=randi(n-3);
        tmp(1,h)=branches(f,r);
    end
    tmp=benefit(tmp,objective_function);
    %if objective_function==1
       if tmp(1,n)<branches(i,n)
          branches(i,:)=tmp; 
       end
    %end
end
output=branches;
end

