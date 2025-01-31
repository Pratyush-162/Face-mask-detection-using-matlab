% File: evaluateModel.m
% Classify the validation images
YPred = classify(net, imdsValidation);

% Use the original labels from the imageDatastore (before augmentation)
YValidation = imdsValidation.UnderlyingDatastores{1}.Labels;

% Calculate accuracy
accuracy = mean(YPred == YValidation);
disp(['Validation Accuracy: ', num2str(accuracy)]);

% Display confusion matrix
confusionchart(YValidation, YPred);