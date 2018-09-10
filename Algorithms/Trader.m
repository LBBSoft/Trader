tic;
nob=100;
not=round(nob/10);
property=zeros(1,not);
branches=zeros(nob,d+3);
branches=initial(branches,range);
branches(:,d+1)=not;
for i=1:not
    branches((i-1)*not+1:not*i,d+1)=i;
end
branches=benefit(branches,objective_function);
noi=100;
hamtrader=zeros(1,noi);
for i=1:noi
    branches=main_branch(branches,1,not);
    branches=retailing(branches,range,objective_function);
    branches=import_export(branches,objective_function);
    property=update_property(property,branches,1);
    branches=get_branch(branches,property);
    hamtrader(1,i)=min(branches(:,d+3));
end
toc;