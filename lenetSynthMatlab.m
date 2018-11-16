function [netScores] = lenetSynthMatlab(inputImg, weightsConv1, biasConv1, weightsConv2, biasConv2, weightsFC1, biasFC1, weightsFC2, biasFC2, weightsFC3, biasFC3)
%LENETSYNTH Synthesizable model of LeNet5
%   inputImg: 32x32x1 MNIST image

    % Layer 1: conv1
    conv1ActivationMap = zeros(28, 28, 6);
    for f = 1:1:6
        % Extract desired filter
        filter = weightsConv1(:, : , :, f);
        for r = 1:1:28
            for c = 1:1:28
                imgRegion = inputImg(r:r + 4, c:c + 4, :);
                conv1ActivationMap(r, c, f) = sum(sum(filter .* single(imgRegion))) + biasConv1(:, :, f);
            end
        end
    end
    
    netScores = conv1ActivationMap;
    return;
    
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
        filter = weightsConv2(:, : , :, f);
        for r = 1:1:10
            for c = 1:1:10
                imgRegion = pool1ActivationMap(r:r + 4, c:c + 4, :);
                conv2ActivationMap(r, c, :) = sum(sum(sum(filter .* imgRegion))) + biasConv2(:, :, f);
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
    
    % Layer 7: fc1
    fc1ActivationMap = zeros(120, 1);
    for f = 1:1:120
        fc1ActivationMap(f) = sum(sum(sum((pool2ActivationMap .* weightsFC1(:, :, :, f))))) + biasFC1(:, :, f);
    end
    
    % Layer 8: relu3
    relu3ActivationMap = max(0, fc1ActivationMap);
    
    % Layer 9: fc2
    fc2ActivationMap = weightsFC2 * relu3ActivationMap + biasFC2;
    
    % Layer 10: fc3
    netScores = weightsFC3 * fc2ActivationMap + biasFC3;

end

