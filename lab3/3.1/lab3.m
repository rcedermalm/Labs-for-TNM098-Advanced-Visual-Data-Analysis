testimage = imread('Images/10.jpg');
testimage2 = imread('Images/07.jpg');


for i=1:12
    filename = strcat('Images/',pad(num2str(i),2,'left','0'),'.jpg');
    img = imread(filename);
    imgFeatures(i) = findFeatures(img);
end

for i=1:11
    dif(1) = abs(imgFeatures(12).std{1} - imgFeatures(1).std{1});
    dif(1) = abs(imgFeatures(12).std{1} - imgFeatures(1).std{1});
    dif(1) = abs(imgFeatures(12).std{1} - imgFeatures(1).std{1});

end

    