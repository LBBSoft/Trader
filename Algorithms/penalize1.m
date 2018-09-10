function [ output ] = penalize1( branch )
y=length(branch);
a=10;
k=100;
m=4;
f=0;
for i=1:y-4
    x1=1+(branch(i)+1)/4;
    x2=1+(branch(i+1)+1)/4;
    f=f+power(x1-1,2)*(1+10*power(sin(pi*x2),2));
end
x1=1+(branch(1)+1)/4;
x2=1+(branch(y-3)+1)/4;
f=f+pi/(y-3)*10*sin(pi*x1)+power(x2-1,2);
r=0;
for i=1:y-3
    x=branch(i);
    if x>a
        r=r+k*power(x-a,m);
    end
    if x<-a
        r=r+k*power(-x-a,m);
    end
end
f=f+r;
branch(y)=f;
output=branch;
end