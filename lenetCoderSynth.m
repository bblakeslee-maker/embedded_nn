function [netScores] = lenetCoderSynth(inputImg)
%LENETCODERSYNTH LeNet implementation for code generation

    % Load all constants
    networkWeights = coder.load('networkWeights.mat');
    weightsConv1 = networkWeights.weightsConv1;
    biasConv1 = networkWeights.biasConv1;
    weightsConv2 = networkWeights.weightsConv2;
    biasConv2 = networkWeights.biasConv2;
    weightsFC1 = networkWeights.weightsFC1;
    biasFC1 = networkWeights.biasFC1;
    weightsFC2 = networkWeights.weightsFC2;
    biasFC2 = networkWeights.biasFC2;
    weightsFC3 = networkWeights.weightsFC3;
    biasFC3 = networkWeights.biasFC3;
    
    % Layer 1: conv1
    conv1ActivationMap = zeros(28, 28, 6);
    for f = 1:1:6
        conv1ActivationMap(:, :, f) = convn(inputImg, flip(flip(flip(weightsConv1(:, :, :, f), 3), 2), 1), 'valid') + biasConv1(:, :, f);
    end
    
    % Layer 2: relu1
    relu1ActivationMap = max(0, conv1ActivationMap);
    
    % Layer 3: pool1
    pool1ActivationMap = zeros(14, 14, 6);
    for f = 1:1:6
        rowOutIdx = 1;
        for r = 1:2:27
            colOutIdx = 1;
            for c = 1:2:27
                pool1ActivationMap(rowOutIdx, colOutIdx, f) = max(max(relu1ActivationMap(r:r + 1, c:c + 1, f)));
                colOutIdx = colOutIdx + 1;
            end
            rowOutIdx = rowOutIdx + 1;
        end
    end
    
    % Layer 4: conv2
    conv2ActivationMap = zeros(10, 10, 16);
    for f = 1:1:16
        conv2ActivationMap(:, :, f) = convn(pool1ActivationMap, flip(flip(flip(weightsConv2(:, :, :, f), 3), 2), 1), 'valid') + biasConv2(:, :, f);
    end
    
    % Layer 5: relu2
    relu2ActivationMap = max(0, conv2ActivationMap);
    
    % Layer 6: pool2
    pool2ActivationMap = zeros(5, 5, 16);
    for f = 1:1:16
        rowOutIdx = 1;
        for r = 1:2:9
            colOutIdx = 1;
            for c = 1:2:9
                pool2ActivationMap(rowOutIdx, colOutIdx, f) = max(max(relu2ActivationMap(r:r + 1, c:c + 1, f)));
                colOutIdx = colOutIdx + 1;
            end
            rowOutIdx = rowOutIdx + 1;
        end
    end
    
    % Layer 7: fc1
    fc1ActivationMap = zeros(120, 1);
    for f = 1:1:120
        fc1ActivationMap(f) = convn(pool2ActivationMap, flip(flip(flip(weightsFC1(:, :, :, f), 3), 2), 1), 'valid') + biasFC1(:, :, f);
    end
        
    % Layer 8: relu3 -- OK
    relu3ActivationMap = max(0, fc1ActivationMap);
    
    % Layer 9: fc2 -- OK
    fc2ActivationMap = weightsFC2 * relu3ActivationMap + biasFC2;
    
    % Layer 10: fc3 -- OK
    netScores = weightsFC3 * fc2ActivationMap + biasFC3;

end

