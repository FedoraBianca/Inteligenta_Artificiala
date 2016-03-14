function [ accuracy ] = computAccuracy( testLabels, predictedLabels )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
m=size(testLabels,1); %aflu dimensiunile pt. testLabels
nr=0; %nr= numarul de etichete corecte
for i= 1:m
    if testLabels(i)==predictedLabels(i)
        nr= nr+1;
    end
end
% am aflat cate etichete au fost prezise corect
accuracy=nr/m;
end

