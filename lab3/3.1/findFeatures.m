function [fVec] = findFeatures(img)

img = im2double(img);
Red = img(:,:,1);
Green = img(:,:,2);
Blue = img(:,:,3);


rMean = sum(sum(Red))/(size(img,1)*size(img,2));
gMean = sum(sum(Green))/(size(img,1)*size(img,2));
bMean = sum(sum(Blue))/(size(img,1)*size(img,2));
fVec.mean = {rMean, gMean, bMean};

rstd = std(std((Red)));
gstd = std(std((Green)));
bstd = std(std((Blue)));
fVec.std = {rstd, gstd, bstd};


R1 = Red(1:size(img,1)/3,1:size(img,2)/3 );
R2 = Red(size(img,1)/3:size(img,1)/3*2 , 1:size(img,2)/3 );
R3 = Red(size(img,1)/3*2:size(img,1) , 1:size(img,2)/3 );
R4 = Red(1:size(img,1)/3,size(img,2)/3:size(img,2)/3*2 );
R5 = Red(size(img,1)/3:size(img,1)/3*2 , size(img,2)/3:size(img,2)/3*2 );
R6 = Red(size(img,1)/3*2:size(img,1) , size(img,2)/3:size(img,2)/3*2 );
R7 = Red(1:size(img,1)/3 , size(img,2)/3*2:size(img,2) );
R8 = Red(size(img,1)/3:size(img,1)/3*2 , size(img,2)/3*2:size(img,2) );
R9 = Red(size(img,1)/3*2:size(img,1) , size(img,2)/3*2:size(img,2) );

fVec.red = { sum(imhist(R1)), sum(imhist(R2)), sum(imhist(R3)), sum(imhist(R4)), sum(imhist(R5)), sum(imhist(R6)), sum(imhist(R7)), sum(imhist(R8)), sum(imhist(R9)) };

G1 = Green(1:size(img,1)/3,1:size(img,2)/3 );
G2 = Green(size(img,1)/3:size(img,1)/3*2 , 1:size(img,2)/3 );
G3 = Green(size(img,1)/3*2:size(img,1) , 1:size(img,2)/3 );
G4 = Green(1:size(img,1)/3,size(img,2)/3:size(img,2)/3*2 );
G5 = Green(size(img,1)/3:size(img,1)/3*2 , size(img,2)/3:size(img,2)/3*2 );
G6 = Green(size(img,1)/3*2:size(img,1) , size(img,2)/3:size(img,2)/3*2 );
G7 = Green(1:size(img,1)/3 , size(img,2)/3*2:size(img,2) );
G8 = Green(size(img,1)/3:size(img,1)/3*2 , size(img,2)/3*2:size(img,2) );
G9 = Green(size(img,1)/3*2:size(img,1) , size(img,2)/3*2:size(img,2) );

fVec.green = { sum(imhist(G1)), sum(imhist(G2)), sum(imhist(G3)), sum(imhist(G4)), sum(imhist(G5)), sum(imhist(G6)), sum(imhist(G7)), sum(imhist(G8)), sum(imhist(G9)) };

B1 = Blue(1:size(img,1)/3,1:size(img,2)/3 );
B2 = Blue(size(img,1)/3:size(img,1)/3*2 , 1:size(img,2)/3 );
B3 = Blue(size(img,1)/3*2:size(img,1) , 1:size(img,2)/3 );
B4 = Blue(1:size(img,1)/3,size(img,2)/3:size(img,2)/3*2 );
B5 = Blue(size(img,1)/3:size(img,1)/3*2 , size(img,2)/3:size(img,2)/3*2 );
B6 = Blue(size(img,1)/3*2:size(img,1) , size(img,2)/3:size(img,2)/3*2 );
B7 = Blue(1:size(img,1)/3 , size(img,2)/3*2:size(img,2) );
B8 = Blue(size(img,1)/3:size(img,1)/3*2 , size(img,2)/3*2:size(img,2) );
B9 = Blue(size(img,1)/3*2:size(img,1) , size(img,2)/3*2:size(img,2) );

fVec.blue = { sum(imhist(B1)), sum(imhist(B2)), sum(imhist(B3)), sum(imhist(B4)), sum(imhist(B5)), sum(imhist(B6)), sum(imhist(B7)), sum(imhist(B8)), sum(imhist(B9)) };

end

