function [ output ] = update_memory(agents,agents_memory)
[m,n]=size(agents);
for i=1:m
    if agents(i,n)<agents_memory(i,n)
       agents_memory(i,:)=agents(i,:); 
    end
end
output=agents_memory;
end

