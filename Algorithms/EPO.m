tic;
np = 1200;
noi=100;
n=d;
penguines=zeros(np,n+3);
penguines=initial(penguines,range);
penguines=benefit(penguines,objective_function);
penguine_memory=penguines;
hamEPO=[];
for g=1:noi
   penguines=update_penguine_parameters(penguines,g,noi,range);
   penguines=benefit(penguines,objective_function);
   penguine_memory=update_memory(penguines,penguine_memory);
   hamEPO=[hamEPO,min(penguine_memory(:,n+3))];
end
toc