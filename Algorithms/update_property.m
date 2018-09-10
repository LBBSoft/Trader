function [ output] = update_property(property,branches,objective_function)
t=length(property);
[m,n]=size(branches);
if objective_function==1
    ma=max(branches(:,n));
    branches(:,n)=ma-branches(:,n);
    for i=1:t
        s=0;
        for j=1:m
            if branches(i,n-2)==i
                s=s+branches(j,n);
            end
        end
        property(i)=s;
    end
end
s=sum(property);
property=fix((property/s)*(m-2*t));
property=property+2;
s=sum(property);
property(t)=property(t)+(m-s);
output=property;
end

