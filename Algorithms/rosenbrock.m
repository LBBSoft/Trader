function [ output ] = rosenbrock(branch)
k=length(branch);
f=0;
n=k-3;
for i=1:n-1
    f=f+100*power((branch(i+1)-branch(i)),2)+power(branch(i)-1,2);
end
branch(k)=f;
output=branch;
end

