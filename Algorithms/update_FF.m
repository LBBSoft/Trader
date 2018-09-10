function [ output ] = update_FF(FF,FF_memory,t,noi,range)
[m,n]=size(FF);
best=selectbest(FF_memory,1);
for i=1:m
    dis=power(FF(i,:)-best,2);
    dis=sum(dis(1,1:n-3));
    dis=sqrt(dis);
    FF(i,n-1)=dis;
end
ma=max(FF(:,n-1))+1;
mi=min(FF(:,n-1))-1;
for i=1:m
   dis=(FF(i,n-1)-mi)/(ma-mi);
   r=range;
   r=r*(dis+(noi-t)/noi)/10;
   dif=abs(best-FF(i,:));
   av=mean(dif(1,1:n-3));
   for j=1:n-3
       if abs(best(1,j)-FF(i,j))>av
           if best(1,j)>FF(i,j)
              FF(i,j)=best(1,j)+abs(unifrnd(r(1),r(2)));
           else
               FF(i,j)=best(1,j)-abs(unifrnd(r(1),r(2)));
           end
       end
   end
   FF(i,1:n-3)=min( FF(i,1:n-3),range(2));
   FF(i,1:n-3)=max( FF(i,1:n-3),range(1));
end
output=FF;
end

