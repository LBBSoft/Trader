tic;
nob=100;
r=3;
bats=zeros(nob,d+3);
bats=initial(bats,range);
bats(:,d+1)=r;
bats=benefit(bats,objective_function);
noi=100;
hamdbva=zeros(1,noi);
for i=1:noi
    bats=move_bats(bats,objective_function,range);
    hamdbva(1,i)=min(bats(:,d+3));
end
toc;