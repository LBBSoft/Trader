tic;
nteam = 15;
nos=100;
n=d;
teams=zeros(nteam,n+3);
mtime=5;
teams=initial(teams,range);
teams=benefit(teams,objective_function);
nog=4;
hamwcc=[];
bests=teams(1,:);
for g=1:nos
   teams=grouping(teams,nog,nteam); 
   teams=groupmatch(teams,mtime,range,objective_function);
   hamwcc=[hamwcc,min(teams(:,n+3))];
end
teams=eliminate(teams,mtime,range,objective_function);
toc