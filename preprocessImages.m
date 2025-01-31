% File: preprocessImages.m
% Define the input size for AlexNet (227x227x3)
inputSize = [227 227 3];

% Resize and augment the training and validation datasets
imdsTrain = augmentedImageDatastore(inputSize, imdsTrain);
imdsValidation = augmentedImageDatastore(inputSize, imdsValidation);

disp('Images preprocessed and resized.');