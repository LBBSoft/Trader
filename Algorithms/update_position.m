function [ output1,output2 ] = update_position(particles1,particles,gbest,range,particles1_v,w)
[m,n]=size(particles1);
c1=2;
c2=2;
for i=1:m
    v=particles1_v(i,:);
    pb=particles(i,1:n-3);
    gb=gbest(1,1:n-3);
    v=v*w+c1*rand(1,n-3).*(pb-particles1(i,1:n-3))+c2*rand(1,n-3).*(gb-particles1(i,1:n-3));
    velmax=(range(2)-range(1))/10;
    velmin=-velmax; 
    v=max(v,velmin);
    v=min(v,velmax);
    particles1(i,1:n-3)=particles1(i,1:n-3)+v;
    particles1_v(i,:)=v;
    for j=1:n-3
        if particles1(i,j)<range(1)
            particles1(i,j)=range(1);
        end
         if particles1(i,j)>range(2)
            particles1(i,j)=range(2);
        end
    end
end
output1=particles1;
output2=particles1_v;
end