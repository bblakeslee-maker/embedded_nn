% Bryan Blakeslee
% 9-13-18
% Tester for LeNet-5 CNN

% Apply test set
predictions = classify(trainedLenet5, testData);
groundTruth = testData.Labels;

% Compute accuracy
accuracy = sum(predictions == groundTruth) / numel(groundTruth);
fprintf('Test set accuracy = %f\n', accuracy);

% Get random subset of classified test images
dim = size(groundTruth);
dimVec = 1:dim(1);
picks = randi(dim(1), [16 1]);
sampleTestGT = groundTruth(picks);
sampleTestPred = predictions(picks);

% Plot subset of classified test images
testPlot = figure;
for i = 1:16
    subplot(4, 4, i);
    imshow(testData.Files{picks(i)});
    title(strcat(string(sampleTestPred(i)), ' (', string(sampleTestGT(i)), ')'));
end
testPlot.NextPlot = 'add';
a = axes;
ht = title('Tested Images with Prediction (Ground Truth)');
a.Visible = 'off';
ht.Visible = 'on';

% Get subset of incorrectly classified test images
errors = predictions ~= groundTruth;
errorIdx = find(errors);
errorIdx = datasample(errorIdx, 16, 'Replace', false);
errorTestGT = groundTruth(errorIdx);
errorTestPred = predictions(errorIdx);

% Plot subset of incorrectly classified test images
wrongPlot = figure;
for i = 1:16
    subplot(4, 4, i);
    imshow(testData.Files{errorIdx(i)});
    title(strcat(string(errorTestPred(i)), ' (', string(errorTestGT(i)), ')'));
end
wrongPlot.NextPlot = 'add';
a = axes;
ht = title('Error Images with Prediction (Ground Truth)');
a.Visible = 'off';
ht.Visible = 'on';