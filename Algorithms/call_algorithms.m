clc
clear
dim=zeros(1,20);
dim(:)=500;
ran=zeros(1,20);
ran(:)=1000;
results=zeros(50,100,11,20);
dim(11)=2;ran(11)=65.536;
dim(12)=2;ran(12)=5;
dim(13)=3;ran(13)=1;
dim(14)=30;
dim(10)=30;
dim(16:20)=30;
for o=1:20
    objective_function=o
    for p=1:50
        p
        d=dim(o);
        range=[-ran(o) ran(o)];
        objective_function=2;
        Trader
        WCC
        PSO
        TE
        virulence
        DVBA
        CEFOA
        EPO
        ION
        TGA
        HTS
        results(p,:,1,o)=hamtrader;
        results(p,:,2,o)=hamwcc;
        results(p,:,3,o)=hampso;
        results(p,:,4,o)=hamTE;
        results(p,:,5,o)=hamvir;
        results(p,:,6,o)=hamdbva;
        results(p,:,7,o)=hamFF;
        results(p,:,8,o)=hamEPO;
        results(p,:,9,o)=hamION;
        results(p,:,10,o)=hamTGA;
        results(p,:,11,o)=hamHTS;
    end
end
x=1:100;
for i=1:4
    subplot(2,2,i)
    hamtrader=select_min_v(results,1,i);
    plot(x,hamtrader,'-h','linewidth',0.9);
    hold on;
    hamwcc=select_min_v(results,2,i);
    plot(x,hamwcc,'-<','linewidth',0.9);
    hampso=select_min_v(results,3,i);
    plot(x,hampso,'-x','linewidth',0.9);
    hamTE=select_min_v(results,4,i);
    plot(x,hamTE,'-o','linewidth',0.9);
    hamvir=select_min_v(results,5,i);
    plot(x,hamvir,'-*','linewidth',0.9);
    hamdbva=select_min_v(results,6,i);
    plot(x,hamdbva,'-+','linewidth',0.9);
    hamFF=select_min_v(results,7,i);
    plot(x,hamFF,'-p','linewidth',0.9);
    hamEPO=select_min_v(results,8,i);
    plot(x,hamEPO,'-^','linewidth',0.9);
    hamION=select_min_v(results,9,i);
    plot(x,hamION,'-.','linewidth',0.9);
    hamTGA=select_min_v(results,10,i);
    plot(x,hamTGA,'-s','linewidth',0.9);
    hamHTS=select_min_v(results,11,i);
    plot(x,hamHTS,'-v','linewidth',0.9);
    title(['F',num2str(i)])
end
legend('TRADER','WCC','PSO','TE','VIR','DVBA','CEFOA','EPO','ION','TGA','HTS')

figure
for i=5:8
    subplot(2,2,i-4)
    hamtrader=select_min_v(results,1,i);
    plot(x,hamtrader,'-h','linewidth',0.9);
    hold on;
    hamwcc=select_min_v(results,2,i);
    plot(x,hamwcc,'-<','linewidth',0.9);
    hampso=select_min_v(results,3,i);
    plot(x,hampso,'-x','linewidth',0.9);
    hamTE=select_min_v(results,4,i);
    plot(x,hamTE,'-o','linewidth',0.9);
    hamvir=select_min_v(results,5,i);
    plot(x,hamvir,'-*','linewidth',0.9);
    hamdbva=select_min_v(results,6,i);
    plot(x,hamdbva,'-+','linewidth',0.9);
    hamFF=select_min_v(results,7,i);
    plot(x,hamFF,'-p','linewidth',0.9);
    hamEPO=select_min_v(results,8,i);
    plot(x,hamEPO,'-^','linewidth',0.9);
    hamION=select_min_v(results,9,i);
    plot(x,hamION,'-.','linewidth',0.9);
    hamTGA=select_min_v(results,10,i);
    plot(x,hamTGA,'-s','linewidth',0.9);
    hamHTS=select_min_v(results,11,i);
    plot(x,hamHTS,'-v','linewidth',0.9);
    title(['F',num2str(i)])
end
legend('TRADER','WCC','PSO','TE','VIR','DVBA','CEFOA','EPO','ION','TGA','HTS')

figure
for i=9:12
    subplot(2,2,i-8)
    hamtrader=select_min_v(results,1,i);
    plot(x,hamtrader,'-h','linewidth',0.9);
    hold on;
    hamwcc=select_min_v(results,2,i);
    plot(x,hamwcc,'-<','linewidth',0.9);
    hampso=select_min_v(results,3,i);
    plot(x,hampso,'-x','linewidth',0.9);
    hamTE=select_min_v(results,4,i);
    plot(x,hamTE,'-o','linewidth',0.9);
    hamvir=select_min_v(results,5,i);
    plot(x,hamvir,'-*','linewidth',0.9);
    hamdbva=select_min_v(results,6,i);
    plot(x,hamdbva,'-+','linewidth',0.9);
    hamFF=select_min_v(results,7,i);
    plot(x,hamFF,'-p','linewidth',0.9);
    hamEPO=select_min_v(results,8,i);
    plot(x,hamEPO,'-^','linewidth',0.9);
    hamION=select_min_v(results,9,i);
    plot(x,hamION,'-.','linewidth',0.9);
    hamTGA=select_min_v(results,10,i);
    plot(x,hamTGA,'-s','linewidth',0.9);
    hamHTS=select_min_v(results,11,i);
    plot(x,hamHTS,'-v','linewidth',0.9);
    title(['F',num2str(i)])
end
legend('TRADER','WCC','PSO','TE','VIR','DVBA','CEFOA','EPO','ION','TGA','HTS')

figure
for i=13:16
    subplot(2,2,i-12)
    hamtrader=select_min_v(results,1,i);
    plot(x,hamtrader,'-h','linewidth',0.9);
    hold on;
    hamwcc=select_min_v(results,2,i);
    plot(x,hamwcc,'-<','linewidth',0.9);
    hampso=select_min_v(results,3,i);
    plot(x,hampso,'-x','linewidth',0.9);
    hamTE=select_min_v(results,4,i);
    plot(x,hamTE,'-o','linewidth',0.9);
    hamvir=select_min_v(results,5,i);
    plot(x,hamvir,'-*','linewidth',0.9);
    hamdbva=select_min_v(results,6,i);
    plot(x,hamdbva,'-+','linewidth',0.9);
    hamFF=select_min_v(results,7,i);
    plot(x,hamFF,'-p','linewidth',0.9);
    hamEPO=select_min_v(results,8,i);
    plot(x,hamEPO,'-^','linewidth',0.9);
    hamION=select_min_v(results,9,i);
    plot(x,hamION,'-.','linewidth',0.9);
    hamTGA=select_min_v(results,10,i);
    plot(x,hamTGA,'-s','linewidth',0.9);
    hamHTS=select_min_v(results,11,i);
    plot(x,hamHTS,'-v','linewidth',0.9);
    title(['F',num2str(i)])
end
legend('TRADER','WCC','PSO','TE','VIR','DVBA','CEFOA','EPO','ION','TGA','HTS')

figure
for i=17:20
    subplot(2,2,i-16)
    hamtrader=select_min_v(results,1,i);
    plot(x,hamtrader,'-h','linewidth',0.9);
    hold on;
    hamwcc=select_min_v(results,2,i);
    plot(x,hamwcc,'-<','linewidth',0.9);
    hampso=select_min_v(results,3,i);
    plot(x,hampso,'-x','linewidth',0.9);
    hamTE=select_min_v(results,4,i);
    plot(x,hamTE,'-o','linewidth',0.9);
    hamvir=select_min_v(results,5,i);
    plot(x,hamvir,'-*','linewidth',0.9);
    hamdbva=select_min_v(results,6,i);
    plot(x,hamdbva,'-+','linewidth',0.9);
    hamFF=select_min_v(results,7,i);
    plot(x,hamFF,'-p','linewidth',0.9);
    hamEPO=select_min_v(results,8,i);
    plot(x,hamEPO,'-^','linewidth',0.9);
    hamION=select_min_v(results,9,i);
    plot(x,hamION,'-.','linewidth',0.9);
    hamTGA=select_min_v(results,10,i);
    plot(x,hamTGA,'-s','linewidth',0.9);
    hamHTS=select_min_v(results,11,i);
    plot(x,hamHTS,'-v','linewidth',0.9);
    title(['F',num2str(i)])
end
legend('TRADER','WCC','PSO','TE','VIR','DVBA','CEFOA','EPO','ION','TGA','HTS')

amar=zeros(11,7,20);
for i=1:11
    for j=1:20
        v=results(:,100,i,j);
        [a,b,c,d]=ttest(v);
        amar(i,1,j)=min(v);
        amar(i,2,j)=max(v);
        amar(i,3,j)=mean(v);
        amar(i,4,j)=b;
        amar(i,5,j)=d.sd;
        amar(i,6,j)=c(1);
        amar(i,7,j)=c(2);
    end
end

for i=1:20
    t=amar(:,:,i);
    MI=t(:,1);
    MAX=t(:,2);
    AVG=t(:,3);
    P_V=t(:,4);
    STD=t(:,5);
    CI_L=t(:,6);
    CI_H=t(:,7);
    T=table(MI,MAX,AVG,P_V,STD,CI_L,CI_H);
    writetable(T,strcat('T',num2str(i),'.xls'));
end

all=[];
for i=1:20
    t=amar(:,:,i);
    all=[all;t];
end
nrm=[];
for i=1:11:220
    t=all(i:i+10,:);
    for j=1:7
        mi=min(t(:,j));
        ma=max(t(:,j));
        for r=1:11
            t(r,j)=(t(r,j)-mi)/(ma-mi);
        end
    end
    nrm=[nrm;t];
end

normalized=[];
for i=1:11
    t=[];
    for j=i:11:220
        t=[t;nrm(j,:)];
    end
    t=mean(t);
    normalized=[normalized;t];
end

anv1=zeros(50,11,20);
for i=1:50
    for j=1:11
        for k=1:20
            anv1(i,j,k)=results(i,100,j,k);
        end
    end
end

for i=1:8
    anv=anv1(:,:,i);
    subplot(2,4,i)
    boxplot(anv,{'TRA','WCC','PSO','TE','VIR','DVB','FOA','EPO','ION','TGA','HTS'})
    set(gca,'XTickLabelRotation',90,'fontsize',7)
    title(['F',num2str(i)])
end
figure
for i=9:16
    anv=anv1(:,:,i);
    subplot(2,4,i-8)
    boxplot(anv,{'TRA','WCC','PSO','TE','VIR','DVB','FOA','EPO','ION','TGA','HTS'})
    set(gca,'XTickLabelRotation',90,'fontsize',7)
    title(['F',num2str(i)])
end
figure
for i=17:20
    anv=anv1(:,:,i);
    subplot(1,4,i-16)
    boxplot(anv,{'TRA','WCC','PSO','TE','VIR','DVB','FOA','EPO','ION','TGA','HTS'})
    set(gca,'XTickLabelRotation',90,'fontsize',7)
    title(['F',num2str(i)])
end