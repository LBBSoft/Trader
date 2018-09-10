function [ output ] = get_branch(branches,property)
not=length(property);
newb=branches;
c=1;
[m,n]=size(branches);
for i=1:m
    if branches(i,n-1)==i 
        newb(c,:)=branches(i,:);
        c=c+1;
    end
end
property=property-1;
for i=1:not
    for j=1:property(i)
        [m,n]=size(branches);
        k=randi(m);
        newb(c,:)=branches(k,:);
        newb(c,n-1)=j;
        branches(k,:)=[];
        c=c+1;
    end
end
output=newb;
end

