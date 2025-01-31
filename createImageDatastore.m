% File: createImageDatastore.m
% Create an image datastore from the dataset folder
imds = imageDatastore('dataset', 'IncludeSubfolders', true, 'LabelSource', 'foldernames');

% Split the dataset into training and validation sets (70% training, 30% validation)
[imdsTrain, imdsValidation] = splitEachLabel(imds, 0.7, 'randomized');

% Display the number of images in each set
disp(['Number of training images: ', num2str(numel(imdsTrain.Files))]);
disp(['Number of validation images: ', num2str(numel(imdsValidation.Files))]);