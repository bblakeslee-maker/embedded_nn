% Bryan Blakeslee
% 11-12-18
% Testbench for synthesis model

% Read out test data
testData.ReadSize = 10000;
reset(testData);
imageMatrix = read(testData);
groundTruth = testData.Labels;

prob = zeros(10000, 10);
correctClass = 0;
errorClass = 0;

global netType;
% netType = 'matlab';

if strcmp(netType, 'matlab')
    testFunction = @lenetSynthMatlab;
elseif strcmp(netType, 'tensor')
    testFunction = @lenetSynthTensor;
else
    fprintf('Invalid net type!\n');
    return
end

fprintf('Progress:\n')
for i = 1:10000
    if(mod(i, 100) == 0) 
        fprintf('%d / 10000\n', i); 
    end
    scores = testFunction(imageMatrix{i}, weightsConv1, biasConv1, weightsConv2, biasConv2, weightsFC1, biasFC1, weightsFC2, biasFC2, weightsFC3, biasFC3);
    if strcmp(netType, 'matlab')
        prob(i, :) = softmax(scores);   % Matlab
    elseif strcmp(netType, 'tensor')
        prob(i, :) = softmax(scores');  % Tensorflow
    end
    [~, idx] = max(prob(i, :));
    class = uint8(idx - 1);
    gt = uint8(groundTruth(i)) - 1;
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