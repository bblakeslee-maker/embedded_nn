% Bryan Blakeslee
% 10-5-18
% Quantizer for neural network

% Make a temporary copy for quantization
quantLenet5 = trainedLenet5.saveobj;

% Quantize conv1 layer
% Get parameters
weightsConv1 = trainedLenet5.Layers(2).Weights;
biasConv1 = trainedLenet5.Layers(2).Bias;
% Quantize
quantWeightsConv1 = fi(weightsConv1, 1, 8, 8);
quantBiasConv1 = fi(biasConv1, 1, 8, 8);
% Reinstall packaged parameters
quantLenet5.Layers(2).Weights = quantWeightsConv1.double;
quantLenet5.Layers(2).Bias = quantBiasConv1.double;

% Quantize conv2 layer
% Get parameters
weightsConv2 = trainedLenet5.Layers(5).Weights;
biasConv2 = trainedLenet5.Layers(5).Bias;
% Quantize
quantWeightsConv2 = fi(weightsConv2, 1, 8, 8);
quantBiasConv2 = fi(biasConv2, 1, 8, 8);
% Reinstall packaged parameters
quantLenet5.Layers(5).Weights = quantWeightsConv2.double;
quantLenet5.Layers(5).Bias = quantBiasConv2.double;

% Quantize fc1 layer
% Get parameters
weightsFC1 = trainedLenet5.Layers(8).Weights;
biasFC1 = trainedLenet5.Layers(8).Bias;
% Quantize
quantWeightsFC1 = fi(weightsFC1, 1, 8, 8);
quantBiasFC1 = fi(biasFC1, 1, 8, 8);
% Reinstall packaged parameters
quantLenet5.Layers(8).Weights = quantWeightsFC1.double;
quantLenet5.Layers(8).Bias = quantBiasFC1.double;

% Quantize fc2 layer
% Get parameters
weightsFC2 = trainedLenet5.Layers(10).Weights;
biasFC2 = trainedLenet5.Layers(10).Bias;
% Quantize
quantWeightsFC2 = fi(weightsFC2, 1, 8, 8);
quantBiasFC2 = fi(biasFC2, 1, 8, 8);
% Reinstall packaged parameters
quantLenet5.Layers(10).Weights = quantWeightsFC2.double;
quantLenet5.Layers(10).Bias = quantBiasFC2.double;

% Quantize fc3
% Get parameters
weightsFC3 = trainedLenet5.Layers(11).Weights;
biasFC3 = trainedLenet5.Layers(11).Bias;
% Quantize
quantWeightsFC3 = fi(weightsFC3, 1, 8, 8);
quantBiasFC3 = fi(biasFC3, 1, 8, 8);
% Reinstall packaged parameters
quantLenet5.Layers(11).Weights = quantWeightsFC3.double;
quantLenet5.Layers(11).Bias = quantBiasFC3.double;

trainedLenet5 = trainedLenet5.loadobj(quantLenet5);
% Configure training options
trainingOpts = trainingOptions('sgdm', 'MaxEpochs', 1, ...
    'InitialLearnRate', eps, 'Verbose', true, 'MiniBatchSize', 128, ...
    'Plots', 'training-progress');

% Train the network
trainedLenet5 = trainNetwork(trainData, trainedLenet5.Layers, trainingOpts);