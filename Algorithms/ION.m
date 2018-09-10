tic;
ni = 1000;
noi=100;
n=d;
ions=zeros(ni,n+3);
ions=initial(ions,range);
ions=benefit(ions,objective_function);
hamION=[];
[anions,cations]=anion_cation(ions);
anions_memory=anions;
cations_memory=cations;
for g=1:noi 
   [anions,cations]=update_ions(anions,cations,range);
   anions=benefit(anions,objective_function);
   cations=benefit(cations,objective_function);
   [anions,cations]=crystal_phase(anions,cations,range);
   anions=benefit(anions,objective_function);
   cations=benefit(cations,objective_function);
   anions_memory=update_memory(anions,anions_memory);
   cations_memory=update_memory(cations,cations_memory);
   hamION=[hamION,min(min(anions_memory(:,n+3)),min(cations_memory(:,n+3)))];
end
toc