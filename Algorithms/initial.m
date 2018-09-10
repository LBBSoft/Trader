function [ output ] = initial( branches,range )
[m,n]=size(branches);
for i=1:m
    for j=1:n-3
        branches(i,j)=unifrnd(range(1),range(2));
    end
end
output=branches;
end

