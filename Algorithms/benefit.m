function [ output ] = benefit(branches,objective_function)
[m,n]=size(branches);
for i=1:m
    if objective_function==1
       branches(i,:)=sphere(branches(i,:)); 
    end
    if objective_function==2
       branches(i,:)=schwefel(branches(i,:)); 
    end
    if objective_function==3
       branches(i,:)=rosenbrock(branches(i,:)); 
    end
    if objective_function==4
       branches(i,:)=step(branches(i,:)); 
    end
    if objective_function==5
       branches(i,:)=generalized_schwefel(branches(i,:)); 
    end
    if objective_function==6
       branches(i,:)=rastrigin(branches(i,:)); 
    end
    if objective_function==7
       branches(i,:)=griewank(branches(i,:)); 
    end
    if objective_function==8
       branches(i,:)=ackley(branches(i,:)); 
    end
    if objective_function==9
       branches(i,:)=penalize1(branches(i,:)); 
    end
    if objective_function==10
       branches(i,:)=penalize2(branches(i,:)); 
    end
    if objective_function==11
       branches(i,:)=foxholes(branches(i,:)); 
    end
    if objective_function==12
       branches(i,:)=six_hump(branches(i,:)); 
    end
    if objective_function==13
       branches(i,:)=hartman(branches(i,:)); 
    end
    if objective_function==14
       branches(i,:)=weierstrass(branches(i,:)); 
    end
    if objective_function==15
       branches(i,:)=discus(branches(i,:)); 
    end
    if objective_function==16
       branches(i,:)=katsuura(branches(i,:)); 
    end
    if objective_function==17
       branches(i,:)=happycat(branches(i,:)); 
    end
    if objective_function==18
       branches(i,:)=hgbat(branches(i,:)); 
    end
    if objective_function==19
       branches(i,:)=scaffer(branches(i,:)); 
    end
    if objective_function==20
       branches(i,:)=elliptic(branches(i,:)); 
    end
end
output=branches;
end