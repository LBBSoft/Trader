function [ output ] = selectweak(strands,nw,objective_function,range)
[m,n]=size(strands);
weaks=zeros(nw,n);
for i=1:nw
   [m,n]=size(strands);
   s=1;
   ma=max(strands(:,n));
   for j=1:m
       if strands(j,n)==ma
           s=j;
           break;
       end
   end
   weaks(i,:)=strands(s,:);
   strands(s,:)=[];
end
weaks=initial(weaks,range);
weaks=benefit(weaks,objective_function);
strands=[strands;weaks];
output=strands;
end

