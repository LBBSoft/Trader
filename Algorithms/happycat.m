function [ output ] = happycat(branch)
n=length(branch);
s=sum(branch(1:n-3).^2);
a=abs(s-(n-3));
a=power(a,1/4);
c=sum(branch(1:n-3));
f=a+(0.5*s+c)/(n-3)+0.5;
branch(n)=f;
output=branch;
end