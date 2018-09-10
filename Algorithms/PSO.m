tic;
nop=2000;
particles=zeros(nop,d+3);
particles=initial(particles,range);
particles_velocity=zeros(nop,d);
npbest=1;
particles=benefit(particles,objective_function);
noi=100;
hampso=zeros(1,noi);
bests=selectbest(particles,npbest);
gbest=bests(1,:);
particles1=particles;
particles1_velocity=particles_velocity;
wdap=0.99;
w=1;
for i=1:noi
    [particles1,particles1_velocity]=update_position(particles1,particles,gbest,range,particles1_velocity,w);
    w=w*wdap;
    particles1=benefit(particles1,objective_function);
    [particles,particles_velocity]=update_answers(particles,particles1,particles_velocity,particles1_velocity);
    bests=selectbest(particles,npbest);
    gbest=bests(1,:);
    hampso(1,i)=min(particles(:,d+3));
end
hampso(1)=hamwcc(1);
toc
hold on