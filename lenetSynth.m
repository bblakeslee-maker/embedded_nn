function [netScores] = lenetSynth(inputImg, quantWeightsConv1, quantBiasConv1, quantWeightsConv2, quantBiasConv2)
%LENETSYNTH Synthesizable model of LeNet5
%   inputImg: 32x32x1 MNIST image

    % Initialization
    netScores = zeros(10, 1);

    % Layer 1: conv1
    conv1ActivationMap = zeros(28, 28, 6);
    for f = 1:1:6
        % Extract desired filter
        filter = quantWeightsConv1(:, : , :, f);
        for r = 1:1:28
            for c = 1:1:28
                imgRegion = inputImg(r:r + 4, c:c + 4, :);
                conv1ActivationMap(r, c, :) = sum(sum(filter .* imgRegion)) + quantBiasConv1(:, :, f);
            end
        end
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
        % Extract desired filter
        filter = quantWeightsConv2(:, : , :, f);
        for r = 1:1:10
            for c = 1:1:10
                imgRegion = pool1ActivationMap(r:r + 4, c:c + 4, :);
                conv2ActivationMap(r, c, :) = sum(sum(sum(filter .* imgRegion))) + quantBiasConv2(:, :, f);
            end
        end
    end
        
    % Layer 5: relu2
    relu2ActivationMap = max(0, conv2ActivationMap);
    
    % Layer 6: pool2
    pool2ActivationMap = zeros(5, 5, 16);
    for f = 1:1:6
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
    netScores = pool2ActivationMap;
    
    % Layer 7: fc1
    fc1ActivationMap = 
    
    % Layer 8: relu3
    relu3ActivationMap = max(0, fc1ActivationMap);
    
    % Layer 9: fc2
    fc2ActivationMap = 
    
    % Layer 10: fc3
    fc3ActivationMap = 

end

