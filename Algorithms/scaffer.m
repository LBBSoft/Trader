function [ output ] = scaffer(branch)
n=length(branch);
s=0;
for i=1:n-4
    s=s+g_scaffer(branch(i),branch(i+1)); 
end
s=s+g_scaffer(branch(n-3),branch(1));
branch(n)=s;
output=branch;
end