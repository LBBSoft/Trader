function [ output ] = katsuura(branch)
n=length(branch);
v=0;
f=1;
for i=1:n-3
    z=branch(i);
    s=0;
    for j=1:32
        h=power(2,j);
        r=h*z;
        s=s+abs(r-round(r))/h;
    end
    f=f*power((1+i*s),10/59.2305);
end
f=f/90-1/90;
branch(n)=f;
output=branch;
end