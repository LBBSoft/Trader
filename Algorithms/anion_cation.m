function [ out1,out2 ] = anion_cation(ions)
[m,n]=size(ions);
anions=[];
cations=[];
while m>0
    k=randi(m);
    anions=[anions;ions(k,1:n)];
    ions(k,:)=[];
    [m,n]=size(ions);
    k=randi(m);
    cations=[cations;ions(k,1:n)];
    ions(k,:)=[];
    [m,n]=size(ions);
end
out1=anions;
out2=cations;
end

