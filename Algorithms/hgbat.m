function [ output ] = hgbat(branch)
n=length(branch);
s=sum(branch(1:n-3).^2);
c=sum(branch(1:n-3));
a=abs(power(s,2)-power(c,2));
a=power(a,1/2);
f=a+(0.5*s+c)/(n-3)+0.5;
branch(n)=f;
output=branch;
end