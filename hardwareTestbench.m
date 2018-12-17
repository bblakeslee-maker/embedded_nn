% Bryan Blakeslee
% 12-13-18
% Testbench for hardware implementation

% Load test dataset
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

% Create a serial port object
serialPort = serial('/dev/ttyUSB1', 'BaudRate', 115200, 'DataBits', 8, 'Parity', 'none', 'StopBit', 1);
serialPort.InputBufferSize = 2000;
serialPort.OutputBufferSize = 2000;
fopen(serialPort);

correctClass = 0;
errorClass = 0;

% Write data to network
for i = 1:10000
    sample = imageMatrix(:, :, i)';
    sample = reshape(sample, [1024 1]);
    fwrite(serialPort, sample, 'uint8', 'sync');
    scores = fread(serialPort, 44, 'uint8');
    prob = softmax(scores);
    [~, guess] = max(prob);
    class = uint8(guess - 1);
    gt = uint8(groundTruth(i));
    if(class == gt)
        correctClass = correctClass + 1;
    else
        errorClass = errorClass + 1;
    end
    if (mod(i, 100) == 0)
        fprintf("Sample Report:\n");
        fpringf("Ground Truth: %d\n", gt);
        for j = 1:10
            fprintf("%d : %f\n", j - 1, prob(j))
        end
        fprintf("**************************************");
    end
end
fclose(serialPort);

% Compute final accuracy
accuracy = correctClass / (correctClass + errorClass);
fprintf('Correct Inferences = %d\n', correctClass);
fprintf('Wrong Inferences = %d\n', errorClass);
fprintf('Accuracy = %f%%\n', accuracy * 100);