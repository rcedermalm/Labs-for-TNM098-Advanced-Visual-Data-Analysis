testimage = imread('Images/10.jpg');
testimage2 = imread('Images/07.jpg');

nrOfImages = 9; %12
point = zeros(1,nrOfImages-1);

for i=1:nrOfImages
    %filename = strcat('Images/', pad(num2str(i), 2, 'left', '0'), '.jpg');
    filename = strcat('Images/', '0', num2str(i), '.jpg');
    img = imread(filename);
    imgFeatures(i) = findFeatures(img);
end

for i=1:nrOfImages-1
    diffRMean(i) = abs(imgFeatures(nrOfImages).mean{1} - imgFeatures(i).mean{1});
    diffGMean(i) = abs(imgFeatures(nrOfImages).mean{2} - imgFeatures(i).mean{2});
    diffBMean(i) = abs(imgFeatures(nrOfImages).mean{3} - imgFeatures(i).mean{3});
    
    diffRStd(i) = abs(imgFeatures(nrOfImages).std{1} - imgFeatures(i).std{1});
    diffGStd(i) = abs(imgFeatures(nrOfImages).std{2} - imgFeatures(i).std{2});
    diffBStd(i) = abs(imgFeatures(nrOfImages).std{3} - imgFeatures(i).std{3});
end

% Put points to the 
for i=1:nrOfImages-1
    [~, index] = min(diffRMean);
    point(index) = point(index) + nrOfImages-i;
    diffRMean(index) = [];
    
    [~, index] = min(diffGMean);
    point(index) = point(index) + nrOfImages-i;
    diffGMean(index) = [];
    
    [~, index] = min(diffBMean);
    point(index) = point(index) + nrOfImages-i;
    diffBMean(index) = [];
    
    [~, index] = min(diffRStd);
    point(index) = point(index) + nrOfImages-i;
    diffRStd(index) = [];
    
    [~, index] = min(diffGStd);
    point(index) = point(index) + nrOfImages-i;
    diffGStd(index) = [];
    
    [~, index] = min(diffBStd);
    point(index) = point(index) + nrOfImages-i;
    diffBStd(index) = [];
end

[~, index] = max(points);

index




    