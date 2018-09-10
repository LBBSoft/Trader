function [ output ] = elliptic(branch)
n=length(branch);
s=0;
for i=1:n-3
    s=s+(i-1)/(n-3-1)*branch(i);
end
s=s*power(10,6);
branch(n)=s;
output=branch;
end