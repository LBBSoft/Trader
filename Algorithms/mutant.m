function [ output ] = mutant(strands)
[m,n]=size(strands);
for i=1:m
    b=randi(n-3);
    a=randi(n-3);
    tmp=strands(i,a);
    strands(i,a)=strands(i,b);
    strands(i,b)=tmp;
end
output=strands;
end

