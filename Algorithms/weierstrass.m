function [ output ] = weierstrass(branch)
n=length(branch);
s=0;
for i=1:n-3
   for j=0:20
       s=s+power(0.5,j)*cos(2*pi*power(3,j)*(branch(i)+0.5));
   end
end
f=0;
for j=0:20
    f=f+power(0.5,j)*cos(2*pi*power(3,j)*(0.5)); 
end
s=s-(n-3)*f;
branch(n)=s;
output=branch;
end