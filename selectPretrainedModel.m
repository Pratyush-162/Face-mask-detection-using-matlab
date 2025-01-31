% File: selectPretrainedModel.m
% Load the pre-trained AlexNet model
net = alexnet;

% Extract the layer graph of the model
lgraph = layerGraph(net);

% Display the layers of the model
disp('Pre-trained model loaded and layer graph extracted.');
analyzeNetwork(lgraph);