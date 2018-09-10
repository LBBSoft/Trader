function [ out1,out2] = update_ions(anions,cations,range)
[m,n]=size(anions);
besta=selectbest(anions,1);
bestc=selectbest(cations,1);
for i=1:m
    for j=1:n-3
        ad=abs(anions(i,j)-bestc(1,j));
        af=1/(1+exp(-0.1/anions(i,j)));
        anions(i,j)=anions(i,j)+af*(bestc(1,j)-anions(i,j));
        ad=abs(cations(i,j)-besta(1,j));
        af=1/(1+exp(-0.1/cations(i,j)));
        cations(i,j)=cations(i,j)+af*(besta(1,j)-cations(i,j));
    end
    anions(i,1:n-3)=min(anions(i,1:n-3),range(2));
    anions(i,1:n-3)=max(anions(i,1:n-3),range(1));
    cations(i,1:n-3)=min(cations(i,1:n-3),range(2));
    cations(i,1:n-3)=max(cations(i,1:n-3),range(1));
end
out1=anions;
out2=cations;
end

