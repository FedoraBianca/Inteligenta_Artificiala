f=@(x)sin(x);
[sx,su]=genereazaExemple( 20,f,0.2 );
[tx,tu]=genereazaExemple( 20,f,0.2 );
figure(1)
MSEtrain=zeros(1,length(sx));
MSEtest=zeros(1,length(sx));
for i=0:9
    subplot(2,5,i+1);
    ploateazaExemple(sx,su);
    hold on
    coef=gasestePolinomOptim(sx,su,i);
    ploteazaGraficPolinom(coef);
    title(strcat('i=',int2str(i)));
    estimtrain=polyval(coef,sx);
    estimtest=polyval(coef,tx);
    MSEtrain(i+1)=calculeazaEroare( estimtrain,su );
    MSEtest(i+1)=calculeazaEroare( estimtest,tu );
    hold off
end 
disp('eroarea pe multimea de antrenare este:')
disp(MSEtrain)

disp('eroarea pe multimea de testare este:')
disp(MSEtest)

sx1=sx(1:7); %noua lultime de antrenare
su1=su(1:7);
sx2=sx(8:10); %multimea de validare
su2=su(8:10);
for i=0:6
    coef=gasestePolinomOptim(sx1,su1,i);
    estim=polyval(coef,sx2);
    Err(i+1)=calculeazaEroare( estim,su2 );
end
[Min,idx]=min(Err);
disp('Erorile pe multimea devalidare sunt:')
disp(Err)
disp('Eroarea minima este ')
disp(Min)
disp('si se obtine pentru polinomul de grad ')
disp(idx-1)

figure(2)
Err(8)=0; Err(9)=0; Err(10)=0;
hold on
k=(0:8);
plot(k,MSEtrain(1:9),'r');
plot(k,MSEtest(1:9),'g');
hold off
