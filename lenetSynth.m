function [netScores] = lenetSynth(inputImg, quantWeightsConv1)
%LENETSYNTH Synthesizable model of LeNet5
%   inputImg: 32x32x1 MNIST image

    % Initialization
    netScores = zeros(10, 1);

    % Layer 1: conv1
    % TODO: Add bias term!
    conv1ActivationMap = zeros(28, 28, 6);
    for f = 1:1:6
        % Extract desired filter
        filter = quantWeightsConv1(:, : , :, f);
        for r = 1:1:28
            for c = 1:1:28
                imgRegion = inputImg(r:r + 4, c:c + 4, :);
                conv1ActivationMap(r, c, f) = sum(sum(filter .* imgRegion));
            end
        end
    end
    
    % Layer 2: relu1
    relu1ActivationMap = max(0, conv1ActivationMap);
    
    % Layer 3: pool1
    pool1ActivationMap = zeros(14, 14, 6);
    for f = 1:1:6
        for r = 1:2:27
            for c = 1:2:27
                
            end
        end
    end
    
    % Layer 4: conv2
    
    % Layer 5: relu2
    
    % Layer 6: pool2
    
    % Layer 7: fc1
    
    % Layer 8: relu3
    
    % Layer 9: fc2
    
    % Layer 10: fc3

end

