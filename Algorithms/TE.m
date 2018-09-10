tic;
nagents = 300;
noi=100;
agents=zeros(nagents,d+3);
agents=initial(agents,range);
agents=benefit(agents,objective_function);
agents_memory=agents;
agents_memory(:,d+3)=inf;
environment_t=0;
hamTE=[];
for g=1:noi
   [agents,G1,G2]=grouping_agents(agents); 
   [agents,t]=update_beta_t(g,noi,agents);
   [agents,environment_t]=update_thermal(agents,t,environment_t,range);
   agents=benefit(agents,objective_function);
   agents_memory=update_memory(agents,agents_memory);
   hamTE=[hamTE,min(agents_memory(:,d+3))];
end
toc
