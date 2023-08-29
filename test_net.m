%this code is used to test the model for accuracy and plots the confusion
%matrix

load net
load aims2
load Test
load Train
testpreds = classify(net, aidms2);  
Actual = Test.Labels;
numCorrect = nnz(testpreds == Actual);
fracCorrect = numCorrect/numel(testpreds);
confusionchart(Test.Labels,testpreds) %plotting confusion matrix of predicted data against the actual labels 