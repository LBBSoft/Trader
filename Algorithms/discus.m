function [ output ] = discus(branch)
n=length(branch);
s=sum(branch(2:n-3).^2);
f=power(10,6)*power(branch(1),2);
s=s+f;
branch(n)=s;
output=branch;
end