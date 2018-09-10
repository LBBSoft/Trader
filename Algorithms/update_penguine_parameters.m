function [ output ] = update_penguine_parameters(penguines,g,noi,range)
[m,n]=size(penguines);
best=selectbest(penguines,1);
for i=1:m
   r=unifrnd(1,2);
   if r>1
       T=0;
   else
       T=1;
   end
   Tp=T-((noi-g)/noi);
   p=penguines(i,1:n-3);
   pb=best(1,1:n-3);
   pe=abs(pb-p);
   A=unifrnd(0,pe)+Tp*unifrnd(range(1),range(2),1,n-3);
   for j=1:n-3
       if p(1,j)>0
           p(1,j)=p(1,j)-A(1,j);
       else
           p(1,j)=p(1,j)+A(1,j);
       end
   end
   p=min(p,range(2));
   p=max(p,range(1));
   penguines(i,1:n-3)=p;
end
output=penguines;
end

