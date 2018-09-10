function [ out1,out2 ] = update_thermal(agents,t,environment_t,range)
[m,n]=size(agents);
c1=randi(2)-1;
c2=randi(2)-1;
environment_t=(1-(c1+c2*(1-t)))*unifrnd(range(1),range(2))*environment_t;
for i=1:m
    t_old=agents(i,1:n-3);
    beta=agents(i,n-1);
    r1=min(t_old(1,1:n-3));
    r2=max(t_old(1,1:n-3));
    t_new=(environment_t+(t_old-environment_t)*exp(-beta*t)+(1-exp(-beta*t))*unifrnd(r1,r2,1,n-3));
    t_new=min(t_new,range(2));
    t_new=max(t_new,range(1));
    agents(i,1:n-3)=t_new;
end
out1=agents;
out2=environment_t;
end

