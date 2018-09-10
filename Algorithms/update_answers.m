function [ output1,output2 ] = update_answers(particles,particles1,particles_velocity,particles1_velocity)
[m,n]=size(particles);
for i=1:m
    if particles1(i,n)<particles(i,n)
       particles(i,:)=particles1(i,:);
       particles_velocity(i,:)=particles1_velocity(i,:);
    end
end
output1=particles;
output2=particles_velocity;
end

