% File: modifyModel.m
% Define the number of classes (2 for binary classification: masked and unmasked)
numClasses = 2;

% Replace the last few layers of the pre-trained model
newLayers = [
    fullyConnectedLayer(numClasses, 'Name', 'fc', 'WeightLearnRateFactor', 10, 'BiasLearnRateFactor', 10)
    softmaxLayer('Name', 'softmax')
    classificationLayer('Name', 'classoutput')
];

% Replace the layers in the layer graph
lgraph = replaceLayer(lgraph, 'fc8', newLayers(1)); % Replace fully connected layer
lgraph = replaceLayer(lgraph, 'prob', newLayers(2)); % Replace softmax layer
lgraph = replaceLayer(lgraph, 'output', newLayers(3)); % Replace classification layer

disp('Model modified for binary classification.');