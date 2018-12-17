% Bryan Blakeslee
% 9-13-18
% Trainer for LeNet-5 CNN

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
trainingOpts = trainingOptions('sgdm', 'MaxEpochs', 10, ...
    'InitialLearnRate', 1e-3, 'Verbose', true, 'MiniBatchSize', 128, ...
    'Plots', 'training-progress');

% Train the network
trainedLenet5 = trainNetwork(trainData, lenet5, trainingOpts);