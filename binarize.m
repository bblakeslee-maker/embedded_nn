% Bryan Blakeslee
% 10-18-18
% Image binarization script

% Training images
for i = 0:9
    srcFolder = fullfile('data', 'train', int2str(i));
    imgs = dir(srcFolder);
    for j = 3:numel(imgs)
        src = fullfile(srcFolder, imgs(j).name);
        img = imread(src);
        binImg = uint8(imbinarize(img, 0.5)) * 255;
        dest = fullfile('binData', 'train', int2str(i), imgs(j).name);
        imwrite(binImg, dest);
    end
end

% Testing images
for i = 0:9
    srcFolder = fullfile('data', 'test', int2str(i));
    imgs = dir(srcFolder);
    for j = 3:numel(imgs)
        src = fullfile(srcFolder, imgs(j).name);
        img = imread(src);
        binImg = uint8(imbinarize(img, 0.5)) * 255;
        dest = fullfile('binData', 'test', int2str(i), imgs(j).name);
        imwrite(binImg, dest);
    end
end