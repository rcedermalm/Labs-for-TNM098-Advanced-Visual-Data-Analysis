function [fVec] = findFeatures(img)

img = im2double(img);

rMean = sum(sum(img(:,:,1)))/(size(img,1)*size(img,2));
gMean = sum(sum(img(:,:,2)))/(size(img,1)*size(img,2));
bMean = sum(sum(img(:,:,3)))/(size(img,1)*size(img,2));
fVec.mean = {rMean, gMean, bMean};

rstd = std(std((img(:,:,1))));
gstd = std(std((img(:,:,2))));
bstd = std(std((img(:,:,3))));
fVec.std = {rstd, gstd, bstd};

end

