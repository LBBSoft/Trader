function [ output ] = match( first1,second1,mtime,range,objective_function)
      first=first1;
      second=second1;
      [m,n]=size(first);
      for t=1:mtime
          s=randi(4);
          if (s==1)
             k=randi(n-3);
             for e=1:k
                f=randi(n-3);
                s=randi(n-3);
                first(1,f)=second(1,s);
             end
             first=benefit(first,objective_function);
             if first(1,n)<=first1(1,n)
                 first1=first;
             end
          end
          if (s==2)
             k=randi(n-3);
             for e=1:k
                f=randi(n-3);
                first(1,f)=unifrnd(range(1),range(2));
             end
             first=benefit(first,objective_function);
             if first(1,n)<=first1(1,n)
                 first1=first;
             end
          end
          if (s==3)
             f=randi(n-3);
             for j=1:f
                 first(1,randi(n-3))=unifrnd(range(1),range(2)); 
             end
             first=benefit(first,objective_function);
             if first(1,n)<=first1(1,n)
                 first1=first;
             end
          end
          if (s==4)
             k=randi(n-3);
             r=randi(n-3);
             tmp=first(1,k);
             first(1,k)=first(1,r);
             first(1,r)=tmp;
             first=benefit(first,objective_function);
             if first(1,n)<=first1(1,n)
                 first1=first;
             end
          end
      end
      output=first1;
end

