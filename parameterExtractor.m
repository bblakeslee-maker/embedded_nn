% Bryan Blakeslee
% 11-12-18
% Network parameter extractor

weightsConv1 = trainedLenet5.Layers(2).Weights;
biasConv1 = trainedLenet5.Layers(2).Bias;

weightsConv2 = trainedLenet5.Layers(5).Weights;
biasConv2 = trainedLenet5.Layers(5).Bias;

weightsFC1 = trainedLenet5.Layers(8).Weights;
biasFC1 = trainedLenet5.Layers(8).Bias;

weightsFC2 = trainedLenet5.Layers(10).Weights;
biasFC2 = trainedLenet5.Layers(10).Bias;

weightsFC3 = trainedLenet5.Layers(11).Weights;
biasFC3 = trainedLenet5.Layers(11).Bias;