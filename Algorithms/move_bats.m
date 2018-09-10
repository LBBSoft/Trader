function [ output ] = move_bats(bats,objective_function,range)
[m,n]=size(bats);
for i=1:m
    r=bats(i,n-2);
    bat=select_bat(bats,i,r);   
    f1=randi(n-4);
    f2=randi(n-4);
    if f1>f2
        tmp=f1;
        f1=f2;
        f2=tmp;
    end
    if f1==f2
        f2=f2+1;
    end
    tmp=bats(i,:);
    nv=unifrnd(range(1)/r,range(2)/r,1,f2-f1+1);
    tmp(1,f1:f2)=nv+bat(1,f1:f2);
    tmp=benefit(tmp,objective_function);
    if tmp(1,n)<bats(i,n)
        bats(i,:)=tmp;
        r=r+1;
    end
    r=min(r,round(m/2));
    bats(i,n-2)=r;
end
output=bats;
end

