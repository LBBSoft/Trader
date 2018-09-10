function [ output ] = update_velocity(particles,bests)
[m,n]=size(particles);
for i=1:m
    v=particles(i,n-1);
    ma=max(max(bests(:,1:n-3)));
    mi=min(min(bests(:,1:n-3)));
    w=unifrnd(mi,ma);
    v=v*w;
    particles(i,n-1)=v;
end
output=particles;
end

