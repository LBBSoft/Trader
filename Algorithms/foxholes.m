function [ output ] = foxholes(branch)
n=length(branch);
a=[-32 -16 0 16 32];
a=[a,a,a,a,a];
b=a;
b(:)=-32;
b(6:10)=-16;
b(11:15)=-0;
b(16:20)=16;
b(21:25)=32;
a=[a;b];
s=0;
for j=1:25
    s=s+(1/(j+power(branch(1)-a(1,j),6)+power(branch(2)-a(2,j),6)));
end
s=s+1/500;
s=1/s;
branch(n)=s;
output=branch;
end

