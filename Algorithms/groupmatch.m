function [ output ] = groupmatch( teams,mtime,range,objective_function)
  [m,n]=size(teams);
  for i=1:m
      for j=1:m
          if teams(i,n-2)==teams(j,n-2)
             teams(i,:)=match(teams(i,:),teams(j,:),mtime,range,objective_function);
          end
      end
  end
  output=teams;
end