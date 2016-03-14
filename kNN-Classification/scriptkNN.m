load ('trainData.mat');
load ('testData.mat');
k=3;
predictedLabels=kNN(trainImages,trainLabels,testImages,k);
accuracy=computAccuracy(testLabels,predictedLabels)
