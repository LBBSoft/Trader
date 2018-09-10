function [ output ] = generalized_schwefel( branch )
k=length(branch);
f=0;
for i=1:k-3
    f=f+branch(i)*sin(sqrt(abs(branch(i))));
end
branch(k)=-f;
output=branch;
end

