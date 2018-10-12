% Bryan Blakeslee
% 9-13-18
% Processor for MNIST dataset

clc;
clearvars;

trainImgs = loadMNISTImages('train-images-idx3-ubyte');
trainLabels = loadMNISTLabels('train-labels-idx1-ubyte');
testImgs = loadMNISTImages('t10k-images-idx3-ubyte');
testLabels = loadMNISTLabels('t10k-labels-idx1-ubyte');

% Get number of images in training
[~, numImgsTrain] = size(trainImgs);

% Loop over images and store them in folders named with labels
for i = 1:numImgsTrain
    currentImg = reshape(trainImgs(:, i), [28, 28, 1]);
    currentGT = trainLabels(i);
    dest = fullfile('data', 'train', int2str(currentGT), strcat(int2str(i), '.png'));
    fprintf('%s\n', dest);
    imwrite(currentImg, dest);
end

[~, numImgsTest] = size(testImgs);

for i = 1:numImgsTest
    currentImg = reshape(testImgs(:, i), [28, 28, 1]);
    currentGT = testLabels(i);
    dest = fullfile('data', 'test', int2str(currentGT), strcat(int2str(i), '.png'));
    fprintf('%s\n', dest);
    imwrite(currentImg, dest);
end