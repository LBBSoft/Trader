function [ output ] = schwefel(branch)
n=length(branch);
s=max(abs(branch(1:n-3)));
branch(n)=s;
output=branch;
end