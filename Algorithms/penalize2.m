function [ output ] = penalize2( branch )
y=length(branch);
a=10;
k=100;
m=4;
f=0;
for i=1:y-4
    x1=branch(i);
    f=f+power(x1-1,2)*(1+power(sin(3*pi*x1+1),2));
end
f=f+power(sin(branch(i)*3*pi),2);
f=f+power(branch(y-3)-1,2)*(1+power(sin(branch(y-3)*2*pi),2));
f=0.1*f;
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