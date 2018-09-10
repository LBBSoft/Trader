function [ out1,out2 ] = update_beta_t(g,noi,agents)
[m,n]=size(agents);
wo=max(agents(:,n));
agents(:,n-1)=agents(:,n)/wo;
t=g/noi;
out1=agents;
out2=t;
end

