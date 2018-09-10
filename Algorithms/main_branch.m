function [ output ] = main_branch(branches,objective_function,not)
[m,n]=size(branches);
if objective_function==1
    for i=1:not
        for j=1:m
            if branches(j,n-2)==i
                s=j;
                break;
            end
        end
        k=s;
        for j=s+1:m
            if (branches(j,n-2)==i)&&(branches(j,n)<branches(k,n))
                k=j;
            end
        end
        for j=1:m
            if branches(j,n-2)==i
               branches(j,n-1)=k; 
            end
        end
    end
end
output=branches;
end

