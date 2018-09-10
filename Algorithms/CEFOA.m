tic;
nff = 100;
noi=200;
n=d;
FF=zeros(nff,n+3);
FF=initial(FF,range);
FF(:,n+1)=1;
FF=benefit(FF,objective_function);
FF_memory=FF;
hamFF=[];
for g=1:noi
   FF=update_FF(FF,FF_memory,g,noi,range);
   FF=benefit(FF,objective_function);
   FF_memory=update_memory(FF,FF_memory);
   if rem(g,2)==0
        hamFF=[hamFF,min(FF_memory(:,n+3))];
   end
end
toc