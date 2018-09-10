function [ output ] = ackley( branch )
k=length(branch);
f=0;
for i=1:k-3
    f=f+cos(branch(i)*2*pi);
end
f=f/(k-3);
f=exp(f);
s=sum(branch(1:k-3).^2)/(k-3);
s=-0.2*sqrt(s);
f=-20*exp(s-f)+20+exp(1);
branch(k)=f;
output=branch;
end