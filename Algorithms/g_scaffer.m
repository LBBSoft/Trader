function [ output ] = g_scaffer(z,x)
s=power(sin(sqrt(z*z+x*x)),2)-0.5;
m=power(1+0.001*(z*z+x*x),2);
output=0.5+s/m;
end

