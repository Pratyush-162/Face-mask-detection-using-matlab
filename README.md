# Face-mask-detection-using-matlab

This project is a Face Mask Detection System implemented in MATLAB. It uses a Convolutional Neural Network (CNN) to classify images into two categories: with_mask and without_mask. The project includes:

Data preprocessing and augmentation.
Training a custom CNN model.
Evaluating the model on a validation set.
Real-time face mask detection using a webcam.
This project is ideal for learning deep learning concepts, image processing, and real-time deployment in MATLAB.

Features

Image Classification: Classifies images into "with_mask" and "without_mask" categories.
Real-Time Detection: Detects face masks in real-time using a webcam.
Data Augmentation: Enhances the dataset with random rotations and reflections.
Customizable Model: Allows users to modify the CNN architecture or use transfer learning.
Evaluation Metrics: Provides accuracy and visual predictions on the validation set.
Requirements

To run this project, you need:

MATLAB (version R2020a or later).
MATLAB Toolboxes:
Image Processing Toolbox
Deep Learning Toolbox
Computer Vision Toolbox
A webcam (for real-time detection).
A dataset of images with and without masks (see Dataset section).
Installation

Clone this repository:
bash
Copy
git clone https://github.com/Pratyush-162/face-mask-detection-matlab.git
Open MATLAB and navigate to the project folder.
Usage<br/>

Step 1: Prepare the Dataset

Organize your dataset into two folders: with_mask and without_mask.
Place the dataset in the dataset/ folder.<br/>

<br/>Step 2: Run the Project

Open main.m in MATLAB and run the script.
The script will:
Load and preprocess the data.
Train the CNN model.
Evaluate the model on the validation set.
(Optional) Run real-time detection using a webcam.<br/>

Step 3: Real-Time Detection<br/>

Run realTimeDetection.m to test the model in real-time using your webcam.<br/>
Dataset

The dataset used in this project consists of images of people wearing masks and not wearing masks. You can use the following datasets:<br/>

dataset link- (https://drive.google.com/drive/folders/1Ih3orh42vGmIwCXQNB0b5wsLkICCiZ_l?usp=sharing)



The project uses a simple CNN architecture for classification:


Results

Validation Accuracy: 99.94%<br/>

Contributions are welcome! If you'd like to contribute, please follow these steps:

Fork the repository.
Create a new branch (git checkout -b feature/YourFeature).<br/>

Commit your changes (git commit -m 'Add some feature').<br/>

Push to the branch (git push origin feature/YourFeature).<br/>
Open a pull request.



Email: pratyprat27@gmail.com<br/>
GitHub: Pratyush-162


