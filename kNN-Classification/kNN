function [ predictedLabels ] = kNN( trainImages, trainLabels, testImages, k )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[h,w,n]=size(trainImages); %aflu dimensiunile pt. trainImages
[h,w,m]=size(testImages); %aflu dimensiunile pt. testImagespredictedLabels=zeros(m,1);
predictedLabels=zeros(m,1);
trainVectors=reshape(trainImages,h*w,n); %vector ce contine imaginile de antrenare
testVectors=reshape(testImages,h*w,m); %vector care contine imaginile de testare
vdist=zeros(m,n); % vdist va contine distantele euclidiene dintre vectorii de mai sus
%pe linii am vectorii pt fiecare img din test iar pe coloane distanta
%corespunzatoare fiecarui elem din train
for i=1:m %iau pe rand cele m imagini de testare
    %pentru fiecare imagine din testVectors calculez dist dintre aceasta si 
    %fiecare imagine din trainVectors si retin dist respectiva in vectorul vdist 
    vtest= testVectors(:,i); %in vtest pun imaginea m,adica coloana m din testVectors
    for j=1:n % iau pe rand cele n imagini de antrenare
        vtrain=trainVectors(:,j); %in vtrain pun imaginea n,adica coloana n din trainVectors
        vdist(i,j)=sqrt(sum((vtest-vtrain).^2));
        %vdist va fi o matrice cu m linii si n coloane
        % elementul vdist(i,j) va contine distanta euclidiana dintre
        % imaginea de testare i si imaginea de antrebare j
    end
end
% am construit matricea vdist in care fiecare linie corespunde inei imagini
% de testare iar fiecare coloana contine distanta pentru imaginea de
% testare respectiva si imaginea de antrenare care are indicele egal cu al
% coloane=zeros(m,n);

for i=1:m % va trebui sa sortez fiecare linie din vdist
   
    [~,idx]=sort(vdist(i,:));%vdist(i,:) selecteaza linia i dim matricea vdist
     % in D[i] voi retine elementele de pe linia i din matricea vdist 
     % idx este un vector cu n elemente care retine indicii 
     % idx[i] reprezinta indicele pe care il avea elementul D[i] pe linia i
     % din vdist inainte de sortare
    sortedLabels=trainLabels(idx); %pun in sortedLabels etichetele conform indexarii
    NNLabels=sortedLabels(1:k); % in NNLabels am cei mai apropiati k vecini 
    % deci voi punea doar primele k etichete
    hs=histc(NNLabels,0:9); %h este un vector cu k elemente
    % calculeaza numarul de valori din NNLabels sunt egale cu fiecare numar
    % din 0:9
    % ex: h[2] = nr. de elemente cu eticheta 2
    [~,idxMax]=max(hs); % aflu maximul dintre cele k etichete cele mai apropiate si indicele lui
    predictedLabels(i)=idxMax(1)-1;
end    
end

