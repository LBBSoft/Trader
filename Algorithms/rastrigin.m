function [ output ] = rastrigin(branch)
k=length(branch);
f=0;
for i=1:k-3
    f=f+power(branch(i),2)-10*cos(2*pi*branch(i))+10;
end
branch(k)=f;
output=branch;
end

