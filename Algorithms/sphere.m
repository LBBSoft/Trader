function [ output ] = sphere(branch)
n=length(branch);
s=sum(branch(1:n-3).^2);
branch(n)=s;
output=branch;
end