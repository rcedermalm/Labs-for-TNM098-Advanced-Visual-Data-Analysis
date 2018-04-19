%testimage = imread('Images/10.jpg');
%testimage2 = imread('Images/07.jpg');

nrOfImages = 12; %12
point = zeros(1,nrOfImages);
testImage = 3;

for i=1:nrOfImages
    filename = strcat('Images/', pad(num2str(i), 2, 'left', '0'), '.jpg');
    %filename = strcat('Images/', '0', num2str(i), '.jpg');
    img = imread(filename);
    imgFeatures(i) = findFeatures(img);
end

for i=1:nrOfImages
    if (i ~= testImage)
    diffRMean(i) = abs(imgFeatures(testImage).mean{1} - imgFeatures(i).mean{1});
    diffGMean(i) = abs(imgFeatures(testImage).mean{2} - imgFeatures(i).mean{2});
    diffBMean(i) = abs(imgFeatures(testImage).mean{3} - imgFeatures(i).mean{3});
    
    diffRStd(i) = abs(imgFeatures(testImage).std{1} - imgFeatures(i).std{1});
    diffGStd(i) = abs(imgFeatures(testImage).std{2} - imgFeatures(i).std{2});
    diffBStd(i) = abs(imgFeatures(testImage).std{3} - imgFeatures(i).std{3});
    
    diffR1hist(i) = abs(imgFeatures(testImage).red{1} - imgFeatures(i).red{1});
    diffR2hist(i) = abs(imgFeatures(testImage).red{2} - imgFeatures(i).red{2});
    diffR3hist(i) = abs(imgFeatures(testImage).red{3} - imgFeatures(i).red{3});
    diffR4hist(i) = abs(imgFeatures(testImage).red{4} - imgFeatures(i).red{4});
    diffR5hist(i) = abs(imgFeatures(testImage).red{5} - imgFeatures(i).red{5});
    diffR6hist(i) = abs(imgFeatures(testImage).red{6} - imgFeatures(i).red{6});
    diffR7hist(i) = abs(imgFeatures(testImage).red{7} - imgFeatures(i).red{7});
    diffR8hist(i) = abs(imgFeatures(testImage).red{8} - imgFeatures(i).red{8});
    diffR9hist(i) = abs(imgFeatures(testImage).red{9} - imgFeatures(i).red{9});
    
    diffG1hist(i) = abs(imgFeatures(testImage).green{1} - imgFeatures(i).green{1});
    diffG2hist(i) = abs(imgFeatures(testImage).green{2} - imgFeatures(i).green{2});
    diffG3hist(i) = abs(imgFeatures(testImage).green{3} - imgFeatures(i).green{3});
    diffG4hist(i) = abs(imgFeatures(testImage).green{4} - imgFeatures(i).green{4});
    diffG5hist(i) = abs(imgFeatures(testImage).green{5} - imgFeatures(i).green{5});
    diffG6hist(i) = abs(imgFeatures(testImage).green{6} - imgFeatures(i).green{6});
    diffG7hist(i) = abs(imgFeatures(testImage).green{7} - imgFeatures(i).green{7});
    diffG8hist(i) = abs(imgFeatures(testImage).green{8} - imgFeatures(i).green{8});
    diffG9hist(i) = abs(imgFeatures(testImage).green{9} - imgFeatures(i).green{9});
    
    diffB1hist(i) = abs(imgFeatures(testImage).blue{1} - imgFeatures(i).blue{1});
    diffB2hist(i) = abs(imgFeatures(testImage).blue{2} - imgFeatures(i).blue{2});
    diffB3hist(i) = abs(imgFeatures(testImage).blue{3} - imgFeatures(i).blue{3});
    diffB4hist(i) = abs(imgFeatures(testImage).blue{4} - imgFeatures(i).blue{4});
    diffB5hist(i) = abs(imgFeatures(testImage).blue{5} - imgFeatures(i).blue{5});
    diffB6hist(i) = abs(imgFeatures(testImage).blue{6} - imgFeatures(i).blue{6});
    diffB7hist(i) = abs(imgFeatures(testImage).blue{7} - imgFeatures(i).blue{7});
    diffB8hist(i) = abs(imgFeatures(testImage).blue{8} - imgFeatures(i).blue{8});
    diffB9hist(i) = abs(imgFeatures(testImage).blue{9} - imgFeatures(i).blue{9});
    
    end
    
    
    
end

% Put points to the 
for i=1:nrOfImages
    
    if(i ~= testImage)
    
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
    
    %HIST
    
    %Red
    [~, index] = min(diffR1hist);
    point(index) = point(index) + nrOfImages-i;
    diffR1hist(index) = [];
    
    [~, index] = min(diffR2hist);
    point(index) = point(index) + nrOfImages-i;
    diffR2hist(index) = [];
    
    [~, index] = min(diffR3hist);
    point(index) = point(index) + nrOfImages-i;
    diffR3hist(index) = [];
    
    [~, index] = min(diffR4hist);
    point(index) = point(index) + nrOfImages-i;
    diffR4hist(index) = [];
    
    [~, index] = min(diffR5hist);
    point(index) = point(index) + nrOfImages-i;
    diffR5hist(index) = [];
    
    [~, index] = min(diffR6hist);
    point(index) = point(index) + nrOfImages-i;
    diffR6hist(index) = [];
    
    [~, index] = min(diffR7hist);
    point(index) = point(index) + nrOfImages-i;
    diffR7hist(index) = [];
    
    [~, index] = min(diffR8hist);
    point(index) = point(index) + nrOfImages-i;
    diffR8hist(index) = [];
    
    [~, index] = min(diffR9hist);
    point(index) = point(index) + nrOfImages-i;
    diffR9hist(index) = [];
    
    %Green
    [~, index] = min(diffG1hist);
    point(index) = point(index) + nrOfImages-i;
    diffG1hist(index) = [];
    
    [~, index] = min(diffG2hist);
    point(index) = point(index) + nrOfImages-i;
    diffG2hist(index) = [];
    
    [~, index] = min(diffG3hist);
    point(index) = point(index) + nrOfImages-i;
    diffG3hist(index) = [];
    
    [~, index] = min(diffG4hist);
    point(index) = point(index) + nrOfImages-i;
    diffG4hist(index) = [];
    
    [~, index] = min(diffG5hist);
    point(index) = point(index) + nrOfImages-i;
    diffG5hist(index) = [];
    
    [~, index] = min(diffG6hist);
    point(index) = point(index) + nrOfImages-i;
    diffG6hist(index) = [];
    
    [~, index] = min(diffG7hist);
    point(index) = point(index) + nrOfImages-i;
    diffG7hist(index) = [];
    
    [~, index] = min(diffG8hist);
    point(index) = point(index) + nrOfImages-i;
    diffG8hist(index) = [];
    
    [~, index] = min(diffG9hist);
    point(index) = point(index) + nrOfImages-i;
    diffG9hist(index) = [];
    
    %Green
    [~, index] = min(diffB1hist);
    point(index) = point(index) + nrOfImages-i;
    diffB1hist(index) = [];
    
    [~, index] = min(diffB2hist);
    point(index) = point(index) + nrOfImages-i;
    diffB2hist(index) = [];
    
    [~, index] = min(diffB3hist);
    point(index) = point(index) + nrOfImages-i;
    diffB3hist(index) = [];
    
    [~, index] = min(diffB4hist);
    point(index) = point(index) + nrOfImages-i;
    diffB4hist(index) = [];
    
    [~, index] = min(diffB5hist);
    point(index) = point(index) + nrOfImages-i;
    diffB5hist(index) = [];
    
    [~, index] = min(diffB6hist);
    point(index) = point(index) + nrOfImages-i;
    diffB6hist(index) = [];
    
    [~, index] = min(diffB7hist);
    point(index) = point(index) + nrOfImages-i;
    diffB7hist(index) = [];
    
    [~, index] = min(diffB8hist);
    point(index) = point(index) + nrOfImages-i;
    diffB8hist(index) = [];
    
    [~, index] = min(diffB9hist);
    point(index) = point(index) + nrOfImages-i;
    diffB9hist(index) = [];
    
    end
    
end

[~, index] = max(point);

index




    