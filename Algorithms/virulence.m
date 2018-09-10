tic;
nstrands = 500;
nog=100;
n=d;
nov=round(nstrands/10);
nw=nov;
strands=zeros(nstrands,n+3);
strands=initial(strands,range);
strands=benefit(strands,objective_function);
hamvir=[];
viruses=selectbest(strands,nov);
for g=1:nog
   strands=mutant(strands);
   strands=recombinant(strands,viruses);
   strands=benefit(strands,objective_function);
   strands=selectweak(strands,nw,objective_function,range);
   viruses=selectbest([strands;viruses],nov);
   hamvir=[hamvir,min(viruses(:,n+3))];
end
min(hamvir)
toc
