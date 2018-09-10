function [ output ] = select_bat( bats,inx,r)
[m,n]=size(bats);
bat=bats(1,:);
op=[];
for i=1:r
    k=inx-i;
    if k<1
       k=m+k;
    end
    op=[op;bats(k,:)];
    k=inx+i;
    if k>m
       k=k-m;
    end
    op=[op;bats(k,:)];
end
[m,n]=size(op);
mi=min(op(:,n));
for i=1:m
    if op(i,n)==mi
        break;
    end
end
bat=op(i,:);
output=bat;
end

