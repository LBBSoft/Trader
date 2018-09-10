function [ output ] = conduction(molecules,t,noi,cdf,objective_function,range)
[m,n]=size(molecules);
if noi/t<cdf
   r=unifrnd(0,0.33); 
else
    r=rand(1);
end
for i=1:m
   w=molecules(i,:);
   b=molecules(i,:);
   s=i;
   for j=1:m
       if molecules(j,n)>=w(1,n)
           w=molecules(j,:);
       end
       if molecules(j,n)<=b(1,n)
          b=molecules(j,:);  
          s=j;
       end
   end
   tmp=molecules(i,:);
   j=randi(n-3);
   cds1=-r*r*b(1,j);
   cds2=-r*r*tmp(1,j);
   w(1,j)=tmp(1,j)+cds2;
   tmp(1,j)=b(1,j)+cds1;
   tmp(1,1:n-3)=min( tmp(1,1:n-3),range(2));
   tmp(1,1:n-3)=max( tmp(1,1:n-3),range(1));
   tmp=benefit(tmp,objective_function);
   if tmp(1,n)<molecules(i,n)
       molecules(i,:)=tmp;
   end
   w=benefit(w,objective_function);
   if w(1,n)<molecules(s,n)
       molecules(s,:)=w;
   end
end
output=molecules;
end

