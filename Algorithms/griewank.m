function [ output ] = griewank( branch )
k=length(branch);
f=1;
for i=1:k-3
    f=f*cos(branch(i)/sqrt(i));
end
s=sum(branch(1:k-3).^2)/4000;
f=s-f+1;
branch(k)=f;
output=branch;
end

