function [ output ] = convection(molecules,objective_function,range)
[m,n]=size(molecules);
avg=mean(molecules(:,1:n-3));
r=unifrnd(0.66,1);
for i=3:m-2
    tmp=molecules(i,:);
    avs=mean(molecules(i-2:i+2,1:n-3));
    tmp(1,1:n-3)=tmp(1,1:n-3)+(avs-avg*r);
    tmp(1,1:n-3)=min( tmp(1,1:n-3),range(2));
    tmp(1,1:n-3)=max( tmp(1,1:n-3),range(1));
    tmp=benefit(tmp,objective_function);
    if tmp(1,n)<molecules(i,n)
        molecules(i,:)=tmp;
    end
end
output=molecules;
end

