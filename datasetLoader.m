% Bryan Blakeslee
% 9-13-18
% Loader for dataset objects

clc;
clearvars;

dataFolder = 'binData';

% Load train and test images into randomized datastores
trainDataPath = fullfile(dataFolder, 'train');
trainData = shuffle(imageDatastore(trainDataPath, 'IncludeSubfolders', ...
    true, 'LabelSource', 'foldernames'));
testDataPath = fullfile(dataFolder, 'test');
testData = shuffle(imageDatastore(testDataPath, 'IncludeSubfolders', ...
    true, 'LabelSource', 'foldernames'));

% Create plot of samples from training set
trainPlot = figure;
numTrainImages = 60000;
picks = randperm(numTrainImages, 16);
for i = 1:16
    subplot(4, 4, i);
    imshow(trainData.Files{picks(i)});
    title(string(trainData.Labels(picks(i))));
end
trainPlot.NextPlot = 'add';
a = axes;
ht = title('Training Image Samples');
a.Visible = 'off';
ht.Visible = 'on';

% Create plot of samples from testing set
testPlot = figure;
numTestImages = 10000;
picks = randperm(numTestImages, 16);
for i = 1:16
    subplot(4, 4, i);
    imshow(testData.Files{picks(i)});
    title(string(testData.Labels(picks(i))));
end
testPlot.NextPlot = 'add';
a = axes;
ht = title('Testing Image Samples');
a.Visible = 'off';
ht.Visible = 'on';