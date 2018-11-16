% Bryan Blakeslee
% 11-14-18
% Dumps trained network activation maps to workspace

inputImg = 'data/test/0/4.png';
inputImg = imread(inputImg);

actMapConv1 = activations(trainedLenet5, inputImg, 'conv1');
actMapRelu1 = activations(trainedLenet5, inputImg, 'relu1');
actMapPool1 = activations(trainedLenet5, inputImg, 'pool1');
actMapConv2 = activations(trainedLenet5, inputImg, 'conv2');
actMapRelu2 = activations(trainedLenet5, inputImg, 'relu2');
actMapPool2 = activations(trainedLenet5, inputImg, 'pool2');
actMapFC1   = activations(trainedLenet5, inputImg, 'fc1');
actMapRelu3 = activations(trainedLenet5, inputImg, 'relu3');
actMapFC2   = activations(trainedLenet5, inputImg, 'fc2');
actMapFC3   = activations(trainedLenet5, inputImg, 'fc3');
