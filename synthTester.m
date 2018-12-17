% Bryan Blakeslee
% 11-12-18
% Testbench for synthesis model

% Read in individual images
imageMatrix = uint8(zeros(32, 32, 10000));
groundTruth = zeros(10000, 1);
imageCounter = 1;
dataDir = 'data/test';
for i = 0:1:9
    iStr = sprintf("%s", i + hex2dec('30'));
    paths = dir(fullfile(dataDir, char(iStr), '*.png'));
    for j = 1:1:numel(paths)
        imgPath = fullfile(dataDir, iStr, paths(j).name);
        img = imread(char(imgPath));
        imageMatrix(:, :, imageCounter) = uint8(img);
        groundTruth(imageCounter) = uint8(i);
        imageCounter = imageCounter + 1;
    end
end

dataFolder = 'data';

% Load train and test images into randomized datastores
trainDataPath = fullfile(dataFolder, 'train');
trainData = shuffle(imageDatastore(trainDataPath, 'IncludeSubfolders', ...
    true, 'LabelSource', 'foldernames'));

% Define LeNet5 architecture
lenet5 = [...
    imageInputLayer([32 32 1], 'Name', 'inputLayer', 'Normalization', 'none')
    convolution2dLayer(5, 6, 'Name', 'conv1')
    reluLayer('Name', 'relu1')
    maxPooling2dLayer(2, 'Stride', 2, 'Name', 'pool1')
    convolution2dLayer(5, 16, 'Name', 'conv2')
    reluLayer('Name', 'relu2')
    maxPooling2dLayer(2, 'Stride', 2, 'Name', 'pool2')
    % fullyConnectedLayer(120, 'Name', 'fc1')
    convolution2dLayer(5, 120, 'Name', 'fc1')
    reluLayer('Name', 'relu3')
    fullyConnectedLayer(84, 'Name', 'fc2')
    fullyConnectedLayer(10, 'Name', 'fc3')
    softmaxLayer('Name', 'softmax')
    classificationLayer('Name', 'class')...
];

% Configure training options
trainingOpts = trainingOptions('sgdm', 'MaxEpochs', 6, ...
    'InitialLearnRate', 1e-3, 'Verbose', true, 'MiniBatchSize', 128, ...
    'Plots', 'training-progress');

% Train the network
trainedLenet5 = trainNetwork(trainData, lenet5, trainingOpts);

% Export network weights to file
global weightsConv1;
weightsConv1 = trainedLenet5.Layers(2).Weights;
global biasConv1;
biasConv1 = trainedLenet5.Layers(2).Bias;
global weightsConv2;
weightsConv2 = trainedLenet5.Layers(5).Weights;
global biasConv2;
biasConv2 = trainedLenet5.Layers(5).Bias;
global weightsFC1;
weightsFC1 = trainedLenet5.Layers(8).Weights;
global biasFC1;
biasFC1 = trainedLenet5.Layers(8).Bias;
global weightsFC2;
weightsFC2 = trainedLenet5.Layers(10).Weights;
global biasFC2;
biasFC2 = trainedLenet5.Layers(10).Bias;
global weightsFC3;
weightsFC3 = trainedLenet5.Layers(11).Weights;
global biasFC3;
biasFC3 = trainedLenet5.Layers(11).Bias;
% save('networkWeights.mat', 'weightsConv1', 'biasConv1', 'weightsConv2', ...
%     'biasConv2', 'weightsFC1', 'biasFC1', 'weightsFC2', 'biasFC2', ...
%     'weightsFC3', 'biasFC3');

prob = zeros(10000, 10);
correctClass = 0;
errorClass = 0;

fprintf('Progress:\n')
for i = 1:10000
    if(mod(i, 100) == 0) 
        fprintf('%d / 10000\n', i); 
    end
    % scores = lenetCoderSynth(single(imageMatrix(:, :, i)));
    scores = lenetSynthMatlab(single(imageMatrix(:, :, i)));
    prob(i, :) = softmax(scores);   % Matlab
    [~, idx] = max(prob(i, :));
    class = uint8(idx - 1);
    gt = uint8(groundTruth(i));
    if(class == gt)
        correctClass = correctClass + 1;
    else
        errorClass = errorClass + 1;
    end
end

accuracy = correctClass / (correctClass + errorClass);
fprintf('Correct Inferences = %d\n', correctClass);
fprintf('Wrong Inferences = %d\n', errorClass);
fprintf('Accuracy = %f%%\n', accuracy * 100);