% File: realTimeDetection.m
% Load the trained model
load('face_mask_model.mat'); % Ensure the model is saved as 'faceMaskNet.mat'

% Initialize webcam
cam = webcam;

% Define input size for the model
inputSize = [227 227 3];

% Start real-time detection
while true
    % Capture an image from the webcam
    img = snapshot(cam);
    
    % Resize the image to match the input size of the model
    imgResized = imresize(img, inputSize(1:2));
    
    % Classify the image using the trained model
    [label, score] = classify(net, imgResized);
    
    % Display the label on the image
    if label == 'masked'
        color = 'g'; % Green for masked
    else
        color = 'r'; % Red for unmasked
    end
    
    % Insert text label on the image
    img = insertText(img, [10 10], char(label), 'FontSize', 24, 'BoxColor', color, 'TextColor', 'black');
    
    % Display the image
    imshow(img);
    drawnow;
end

% Release the webcam
clear cam;