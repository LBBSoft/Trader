function [ out1,out2,out3] = grouping_agents(agents)
[m,n]=size(agents);
agents(:,n-2)=0;
f=randi(m);
g1=agents(f,1:n-3);
agents(f,n-2)=1;
f=randi(m);
g2=agents(f,1:n-3);
agents(f,n-2)=2;
mg1=g1;
mg2=g2;
for i=1:m
    if agents(i,n-2)==0
       c1=corr2(mg1,agents(i,1:n-3));
       c2=corr2(mg2,agents(i,1:n-3));
       if c2>c1
           agents(i,n-2)=2;
           g2=[g2;agents(i,1:n-3)];
           mg2=mean(g2);
       else
           agents(i,n-2)=1;
           g1=[g1;agents(i,1:n-3)];
           mg1=mean(g1); 
       end
    end
end
out1=agents;
out2=g1;
out3=g2;
end

