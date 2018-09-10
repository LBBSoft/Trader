function [ output ] = compete_best(trees,teta,r,N1,range,objective_function)
[m,n]=size(trees);
bestt=zeros(N1,n);
for i=1:N1
   [a,b]=size(trees);
   mi=min(trees(:,b));
   for j=1:a
       if trees(j,b)==mi
           break;
       end
   end
   bestt(i,:)=trees(j,:);
   trees(j,:)=[];
end
bestt1=bestt;
bestt1(:,1:n-3)=bestt(:,1:n-3)/teta+bestt(:,1:n-3)*r;
bestt1(:,1:n-3)=min(bestt1(:,1:n-3),range(2));
bestt1(:,1:n-3)=max(bestt1(:,1:n-3),range(1));
bestt1=benefit(bestt1,objective_function);
bestt=update_memory(bestt,bestt1);
trees=[bestt;trees];
output=trees;
end

