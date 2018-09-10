function [ output ] = step( branch )
k=length(branch);
branch(k)=sum(power(fix(branch(1:k-3)+.5),2));
output=branch;
end

