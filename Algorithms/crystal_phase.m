function [ out1,out2 ] = crystal_phase(anions,cations,range)
[m,n]=size(anions);
maa=max(anions(:,n-3));
mia=min(anions(:,n-3));
mac=max(cations(:,n-3));
mic=min(cations(:,n-3));
besta=selectbest(anions,1);
bestc=selectbest(cations,1);
if (maa/2>mia)&&(mac/2>mic)
for i=1:m
    r=rand(1);
    f1=randi(2)-1;
    f2=randi(2)-1;
    if f1==0
        f1=-1;
    end
    if f2==0
        f2=-1;
    end
    if r>.5
       anions(i,1:n-3)=anions(i,1:n-3)+f1*(unifrnd(range(1),range(1),1,n-3)+bestc(1,1:n-3));
       cations(i,1:n-3)=cations(i,1:n-3)+f1*(unifrnd(range(1),range(1),1,n-3)+besta(1,1:n-3));
    else
       mi=min(bestc(1,1:n-3));
       ma=max(bestc(1,1:n-3));
       anions(i,1:n-3)=anions(i,1:n-3)+unifrnd(mi,ma,1,n-3);
       mi=min(besta(1,1:n-3));
       ma=max(besta(1,1:n-3));
       cations(i,1:n-3)=cations(i,1:n-3)+unifrnd(mi,ma,1,n-3); 
    end
    if r<0.05
       anions(i,:)=initial(anions(i,:),range);
       cations(i,:)=initial(cations(i,:),range);
    end
    anions(i,1:n-3)=min(anions(i,1:n-3),range(2));
    anions(i,1:n-3)=max(anions(i,1:n-3),range(1));
    cations(i,1:n-3)=min(cations(i,1:n-3),range(2));
    cations(i,1:n-3)=max(cations(i,1:n-3),range(1));
end
end
out1=anions;
out2=cations;
end

