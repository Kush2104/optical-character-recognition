%This code is used to train a convolution neural network to identify the
%character present in the image 

inLayer = imageInputLayer([64 64 3]); 
convLayer = convolution2dLayer(5,15);
midLayers = [reluLayer();maxPooling2dLayer(2)];
outLayers = [fullyConnectedLayer(27);softmaxLayer();classificationLayer()];
layers = [inLayer;convLayer;midLayers;outLayers];
options = trainingOptions('sgdm','MaxEpochs',15,'InitialLearnRate',0.00001); %setting the training parameters with stochastic gradient descent method as optimizer
imds = imageDatastore('Modified', 'IncludeSubfolders',true, 'LabelSource','foldernames'); %using the folder names as labels for training
letter = imds.Labels;
[Train,Test] = splitEachLabel(imds,30, 'randomized');
aimds = augmentedImageDatastore([64 64 3], Train);
aidms2 = augmentedImageDatastore([64 64 3], Test);
net = trainNetwork(aimds,layers,options); %training the model
