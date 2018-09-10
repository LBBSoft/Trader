tic;
nom=200;
molecules=zeros(nom,d+3);
molecules=initial(molecules,range);
molecules=benefit(molecules,objective_function);
noi=600;
hamHTS=[];
cdf=2;
for i=1:noi
    molecules=conduction(molecules,i,noi,cdf,objective_function,range);
    molecules=convection(molecules,objective_function,range);
    molecules=radiation(molecules,i,noi,cdf,objective_function,range);
    if rem(i,6)==0
       hamHTS=[hamHTS,min(molecules(:,d+3))];
    end
end
toc