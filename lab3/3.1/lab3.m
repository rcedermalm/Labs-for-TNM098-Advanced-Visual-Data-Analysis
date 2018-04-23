nrOfImages = 12; %12
point = zeros(1,nrOfImages);
testImage = 9;

for i=1:nrOfImages
    filename = strcat('Images/', pad(num2str(i), 2, 'left', '0'), '.jpg');
    %filename = strcat('Images/', '0', num2str(i), '.jpg');
    img = imread(filename);
    imgFeatures(i) = findFeatures(img);
end


for i=1:nrOfImages

    diffRMean(i) = abs(imgFeatures(testImage).mean{1} - imgFeatures(i).mean{1});
    diffGMean(i) = abs(imgFeatures(testImage).mean{2} - imgFeatures(i).mean{2});
    diffBMean(i) = abs(imgFeatures(testImage).mean{3} - imgFeatures(i).mean{3});
    
    diffRStd(i) = abs(imgFeatures(testImage).std{1} - imgFeatures(i).std{1});
    diffGStd(i) = abs(imgFeatures(testImage).std{2} - imgFeatures(i).std{2});
    diffBStd(i) = abs(imgFeatures(testImage).std{3} - imgFeatures(i).std{3});
    
    diffR1hist1(i) = abs(imgFeatures(testImage).red1{1} - imgFeatures(i).red1{1});
    diffR2hist1(i) = abs(imgFeatures(testImage).red1{2} - imgFeatures(i).red1{2});
    diffR3hist1(i) = abs(imgFeatures(testImage).red1{3} - imgFeatures(i).red1{3});
    diffR4hist1(i) = abs(imgFeatures(testImage).red1{4} - imgFeatures(i).red1{4});
    diffR5hist1(i) = abs(imgFeatures(testImage).red1{5} - imgFeatures(i).red1{5});
    diffR6hist1(i) = abs(imgFeatures(testImage).red1{6} - imgFeatures(i).red1{6});
    diffR7hist1(i) = abs(imgFeatures(testImage).red1{7} - imgFeatures(i).red1{7});
    diffR8hist1(i) = abs(imgFeatures(testImage).red1{8} - imgFeatures(i).red1{8});
    diffR9hist1(i) = abs(imgFeatures(testImage).red1{9} - imgFeatures(i).red1{9});
    
    diffR1hist2(i) = abs(imgFeatures(testImage).red2{1} - imgFeatures(i).red2{1});
    diffR2hist2(i) = abs(imgFeatures(testImage).red2{2} - imgFeatures(i).red2{2});
    diffR3hist2(i) = abs(imgFeatures(testImage).red2{3} - imgFeatures(i).red2{3});
    diffR4hist2(i) = abs(imgFeatures(testImage).red2{4} - imgFeatures(i).red2{4});
    diffR5hist2(i) = abs(imgFeatures(testImage).red2{5} - imgFeatures(i).red2{5});
    diffR6hist2(i) = abs(imgFeatures(testImage).red2{6} - imgFeatures(i).red2{6});
    diffR7hist2(i) = abs(imgFeatures(testImage).red2{7} - imgFeatures(i).red2{7});
    diffR8hist2(i) = abs(imgFeatures(testImage).red2{8} - imgFeatures(i).red2{8});
    diffR9hist2(i) = abs(imgFeatures(testImage).red2{9} - imgFeatures(i).red2{9});
    
    diffG1hist1(i) = abs(imgFeatures(testImage).green1{1} - imgFeatures(i).green1{1});
    diffG2hist1(i) = abs(imgFeatures(testImage).green1{2} - imgFeatures(i).green1{2});
    diffG3hist1(i) = abs(imgFeatures(testImage).green1{3} - imgFeatures(i).green1{3});
    diffG4hist1(i) = abs(imgFeatures(testImage).green1{4} - imgFeatures(i).green1{4});
    diffG5hist1(i) = abs(imgFeatures(testImage).green1{5} - imgFeatures(i).green1{5});
    diffG6hist1(i) = abs(imgFeatures(testImage).green1{6} - imgFeatures(i).green1{6});
    diffG7hist1(i) = abs(imgFeatures(testImage).green1{7} - imgFeatures(i).green1{7});
    diffG8hist1(i) = abs(imgFeatures(testImage).green1{8} - imgFeatures(i).green1{8});
    diffG9hist1(i) = abs(imgFeatures(testImage).green1{9} - imgFeatures(i).green1{9});
    
    diffG1hist2(i) = abs(imgFeatures(testImage).green2{1} - imgFeatures(i).green2{1});
    diffG2hist2(i) = abs(imgFeatures(testImage).green2{2} - imgFeatures(i).green2{2});
    diffG3hist2(i) = abs(imgFeatures(testImage).green2{3} - imgFeatures(i).green2{3});
    diffG4hist2(i) = abs(imgFeatures(testImage).green2{4} - imgFeatures(i).green2{4});
    diffG5hist2(i) = abs(imgFeatures(testImage).green2{5} - imgFeatures(i).green2{5});
    diffG6hist2(i) = abs(imgFeatures(testImage).green2{6} - imgFeatures(i).green2{6});
    diffG7hist2(i) = abs(imgFeatures(testImage).green2{7} - imgFeatures(i).green2{7});
    diffG8hist2(i) = abs(imgFeatures(testImage).green2{8} - imgFeatures(i).green2{8});
    diffG9hist2(i) = abs(imgFeatures(testImage).green2{9} - imgFeatures(i).green2{9});
    
    diffB1hist1(i) = abs(imgFeatures(testImage).blue1{1} - imgFeatures(i).blue1{1});
    diffB2hist1(i) = abs(imgFeatures(testImage).blue1{2} - imgFeatures(i).blue1{2});
    diffB3hist1(i) = abs(imgFeatures(testImage).blue1{3} - imgFeatures(i).blue1{3});
    diffB4hist1(i) = abs(imgFeatures(testImage).blue1{4} - imgFeatures(i).blue1{4});
    diffB5hist1(i) = abs(imgFeatures(testImage).blue1{5} - imgFeatures(i).blue1{5});
    diffB6hist1(i) = abs(imgFeatures(testImage).blue1{6} - imgFeatures(i).blue1{6});
    diffB7hist1(i) = abs(imgFeatures(testImage).blue1{7} - imgFeatures(i).blue1{7});
    diffB8hist1(i) = abs(imgFeatures(testImage).blue1{8} - imgFeatures(i).blue1{8});
    diffB9hist1(i) = abs(imgFeatures(testImage).blue1{9} - imgFeatures(i).blue1{9});
    
    diffB1hist2(i) = abs(imgFeatures(testImage).blue2{1} - imgFeatures(i).blue2{1});
    diffB2hist2(i) = abs(imgFeatures(testImage).blue2{2} - imgFeatures(i).blue2{2});
    diffB3hist2(i) = abs(imgFeatures(testImage).blue2{3} - imgFeatures(i).blue2{3});
    diffB4hist2(i) = abs(imgFeatures(testImage).blue2{4} - imgFeatures(i).blue2{4});
    diffB5hist2(i) = abs(imgFeatures(testImage).blue2{5} - imgFeatures(i).blue2{5});
    diffB6hist2(i) = abs(imgFeatures(testImage).blue2{6} - imgFeatures(i).blue2{6});
    diffB7hist2(i) = abs(imgFeatures(testImage).blue2{7} - imgFeatures(i).blue2{7});
    diffB8hist2(i) = abs(imgFeatures(testImage).blue2{8} - imgFeatures(i).blue2{8});
    diffB9hist2(i) = abs(imgFeatures(testImage).blue2{9} - imgFeatures(i).blue2{9});
    
end



% Put points to the 
for i=1:nrOfImages
    [~, index] = min(diffRMean);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffRMean(index) = Inf;
    
    [~, index] = min(diffGMean);
    if(index ~= testImage)
    point(index) = point(index) + nrOfImages-i; 
    end
    diffGMean(index) = Inf;
    
    [~, index] = min(diffBMean);
    if(index ~= testImage)
    point(index) = point(index) + nrOfImages-i; 
    end
    diffBMean(index) = Inf;
    
    [~, index] = min(diffRStd);
    if(index ~= testImage)
    point(index) = point(index) + nrOfImages-i; 
    end
    diffRStd(index) = Inf;
    
    [~, index] = min(diffGStd);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffGStd(index) = Inf;
    
    [~, index] = min(diffBStd);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffBStd(index) = Inf;
    
    %HIST
    
    %Red
    [~, index] = min(diffR1hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR1hist1(index) = Inf;
    
    [~, index] = min(diffR2hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR2hist1(index) = Inf;
    
    [~, index] = min(diffR3hist1);
    if(index ~= testImage)1
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR3hist1(index) = Inf;
    
    [~, index] = min(diffR4hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR4hist1(index) = Inf;
    
    [~, index] = min(diffR5hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR5hist1(index) = Inf;
    
    [~, index] = min(diffR6hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR6hist1(index) = Inf;
    
    [~, index] = min(diffR7hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR7hist1(index) = Inf;
    
    [~, index] = min(diffR8hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR8hist1(index) = Inf;
    
    [~, index] = min(diffR9hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR9hist1(index) = Inf;
    
    %Green
    [~, index] = min(diffG1hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG1hist1(index) = Inf;
    
    [~, index] = min(diffG2hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG2hist1(index) = Inf;
    
    [~, index] = min(diffG3hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG3hist1(index) = Inf;
    
    [~, index] = min(diffG4hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG4hist1(index) = Inf;
    
    [~, index] = min(diffG5hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG5hist1(index) = Inf;
    
    [~, index] = min(diffG6hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG6hist1(index) = Inf;
    
    [~, index] = min(diffG7hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG7hist1(index) = Inf;
    
    [~, index] = min(diffG8hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG8hist1(index) = Inf;
    
    [~, index] = min(diffG9hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG9hist1(index) = Inf;
    
    %Green
    [~, index] = min(diffB1hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB1hist1(index) = Inf;
    
    [~, index] = min(diffB2hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB2hist1(index) = Inf;
    
    [~, index] = min(diffB3hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB3hist1(index) = Inf;
    
    [~, index] = min(diffB4hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB4hist1(index) = Inf;
    
    [~, index] = min(diffB5hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB5hist1(index) = Inf;
    
    [~, index] = min(diffB6hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB6hist1(index) = Inf;
    
    [~, index] = min(diffB7hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB7hist1(index) = Inf;
    
    [~, index] = min(diffB8hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB8hist1(index) = Inf;
    
    [~, index] = min(diffB9hist1);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i;
    end
    diffB9hist1(index) = Inf;
    
    [~, index] = min(diffR1hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR1hist2(index) = Inf;
    
    [~, index] = min(diffR2hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR2hist2(index) = Inf;
    
    [~, index] = min(diffR3hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR3hist2(index) = Inf;
    
    [~, index] = min(diffR4hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR4hist2(index) = Inf;
    
    [~, index] = min(diffR5hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR5hist2(index) = Inf;
    
    [~, index] = min(diffR6hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR6hist2(index) = Inf;
    
    [~, index] = min(diffR7hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR7hist2(index) = Inf;
    
    [~, index] = min(diffR8hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR8hist2(index) = Inf;
    
    [~, index] = min(diffR9hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffR9hist2(index) = Inf;
    
    %Green
    [~, index] = min(diffG1hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG1hist2(index) = Inf;
    
    [~, index] = min(diffG2hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG2hist2(index) = Inf;
    
    [~, index] = min(diffG3hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG3hist2(index) = Inf;
    
    [~, index] = min(diffG4hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG4hist2(index) = Inf;
    
    [~, index] = min(diffG5hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG5hist2(index) = Inf;
    
    [~, index] = min(diffG6hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG6hist2(index) = Inf;
    
    [~, index] = min(diffG7hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG7hist2(index) = Inf;
    
    [~, index] = min(diffG8hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG8hist2(index) = Inf;
    
    [~, index] = min(diffG9hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffG9hist2(index) = Inf;
    
    %Green
    [~, index] = min(diffB1hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB1hist2(index) = Inf;
    
    [~, index] = min(diffB2hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB2hist2(index) = Inf;
    
    [~, index] = min(diffB3hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB3hist2(index) = Inf;
    
    [~, index] = min(diffB4hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB4hist2(index) = Inf;
    
    [~, index] = min(diffB5hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB5hist2(index) = Inf;
    
    [~, index] = min(diffB6hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB6hist2(index) = Inf;
    
    [~, index] = min(diffB7hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB7hist2(index) = Inf;
    
    [~, index] = min(diffB8hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i; 
    end
    diffB8hist2(index) = Inf;
    
    [~, index] = min(diffB9hist2);
    if(index ~= testImage)
        point(index) = point(index) + nrOfImages-i;
    end
    diffB9hist2(index) = Inf;
    
end

[P, i] = sort(point, 'descend');
testImage
P
i







    