function [ output ] = retailing(branches,range,objective_function)
[m,n]=size(branches);
for i=1:m
    tmp=branches(i,:);
    k=randi(n-3);
    for j=1:k
        r=randi(2);
        h=randi(n-3);
        v=unifrnd(0,tmp(1,h));
        if r==2
            v=-v;
        end
        tmp(1,h)=tmp(1,h)+v;
        if tmp(1,h)>range(2)
           tmp(1,h)=tmp(1,h)-range(2); 
        end
        if tmp(1,h)<range(1)
           tmp(1,h)=range(2)-range(1)-tmp(1,h); 
        end
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