function [ output ] = selectbest(particles,npbest)
[m,n]=size(particles);
bests=zeros(npbest,n);
for i=1:npbest
    [m,n]=size(particles);
    mi=min(particles(:,n));
    for j=1:m
        if particles(j,n)==mi
            break;
        end
    end
    bests(i,:)=particles(j,:);
    particles(j,:)=[];
end
output=bests;
end