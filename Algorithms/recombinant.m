function [ output ] = recombinant(strands,viruses)
[m,n]=size(strands);
[a,b]=size(viruses);
for i=1:a
    f1=randi(b-3);
    f2=randi(n-3);
    if f1>f2
        tmp=f1;
        f1=f2;
        f2=tmp;
    end
    k=randi(m);
    strands(k,f1:f2)=viruses(a,f1:f2);
end
output=strands;
end

