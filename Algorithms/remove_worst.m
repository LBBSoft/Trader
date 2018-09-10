function [ output ] = remove_worst(trees,N4,range,objective_function)
worst=[];
for i=1:N4
    [m,n]=size(trees); 
    ma=max(trees(:,n));
    for j=1:m
       if trees(j,n)==ma
           break;
       end
    end
    worst=[worst;trees(j,:)];
    trees(j,:)=[];
end
worst=initial(worst,range);
worst=benefit(worst,objective_function);
trees=[trees;worst];
output=trees;
end

