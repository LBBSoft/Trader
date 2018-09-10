function [ output ] = hartman(branch)
n=length(branch);
a=[3 10 30;0.1 10 35;3 10 30;0.1 10 35];
c=[1 1.2 3 3.2];
p=[0.3689 0.1170 0.2673;0.4699 0.4387 0.7470;0.1091 0.8732 0.5547;0.3815 0.5743 0.8828];
s=0;
for i=1:4
    f=0;
    for j=1:3
        f=f+a(i,j)*power(branch(j)-p(i,j),2);
    end
    f=-f;
    f=exp(f);
    s=s+c(i)*f;
end
branch(n)=s;
output=branch;
end