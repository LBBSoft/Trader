function [ output ] = six_hump(branch)
n=length(branch);
z1=branch(1);
z2=branch(2);
s=4*power(z1,2)-2.1*power(z1,4)+power(z1,6)/3+z1*z2-4*power(z2,2)+4*power(z2,4);
branch(n)=s;
output=branch;
end