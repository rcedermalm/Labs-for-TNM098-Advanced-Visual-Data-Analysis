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

imr1 = imhist(R1);
imr2 = imhist(R2);
imr3 = imhist(R3);
imr4 = imhist(R4);
imr5 = imhist(R5);
imr6 = imhist(R6);
imr7 = imhist(R7);
imr8 = imhist(R8);
imr9 = imhist(R9);

fVec.red1 = { sum(imr1(1:128)), sum(imr2(1:128)), sum(imr3(1:128)), sum(imr4(1:128)), sum(imr5(1:128)), sum(imr6(1:128)), sum(imr7(1:128)), sum(imr8(1:128)), sum(imr9(1:128)) };
fVec.red2 =  { sum(imr1(129:256)), sum(imr2(129:256)), sum(imr3(129:256)), sum(imr4(129:256)), sum(imr5(129:256)), sum(imr6(129:256)), sum(imr7(129:256)), sum(imr8(129:256)), sum(imr9(129:256)) };

G1 = Green(1:size(img,1)/3,1:size(img,2)/3 );
G2 = Green(size(img,1)/3:size(img,1)/3*2 , 1:size(img,2)/3 );
G3 = Green(size(img,1)/3*2:size(img,1) , 1:size(img,2)/3 );
G4 = Green(1:size(img,1)/3,size(img,2)/3:size(img,2)/3*2 );
G5 = Green(size(img,1)/3:size(img,1)/3*2 , size(img,2)/3:size(img,2)/3*2 );
G6 = Green(size(img,1)/3*2:size(img,1) , size(img,2)/3:size(img,2)/3*2 );
G7 = Green(1:size(img,1)/3 , size(img,2)/3*2:size(img,2) );
G8 = Green(size(img,1)/3:size(img,1)/3*2 , size(img,2)/3*2:size(img,2) );
G9 = Green(size(img,1)/3*2:size(img,1) , size(img,2)/3*2:size(img,2) );


img1 = imhist(G1);
img2 = imhist(G2);
img3 = imhist(G3);
img4 = imhist(G4);
img5 = imhist(G5);
img6 = imhist(G6);
img7 = imhist(G7);
img8 = imhist(G8);
img9 = imhist(G9);

fVec.green1 = { sum(img1(1:128)), sum(img2(1:128)), sum(img3(1:128)), sum(img4(1:128)), sum(img5(1:128)), sum(img6(1:128)), sum(img7(1:128)), sum(img8(1:128)), sum(img9(1:128)) };
fVec.green2 =  { sum(img1(129:256)), sum(img2(129:256)), sum(img3(129:256)), sum(img4(129:256)), sum(img5(129:256)), sum(img6(129:256)), sum(img7(129:256)), sum(img8(129:256)), sum(img9(129:256)) };

%fVec.green = { sum(imhist(G1)), sum(imhist(G2)), sum(imhist(G3)), sum(imhist(G4)), sum(imhist(G5)), sum(imhist(G6)), sum(imhist(G7)), sum(imhist(G8)), sum(imhist(G9)) };

B1 = Blue(1:size(img,1)/3,1:size(img,2)/3 );
B2 = Blue(size(img,1)/3:size(img,1)/3*2 , 1:size(img,2)/3 );
B3 = Blue(size(img,1)/3*2:size(img,1) , 1:size(img,2)/3 );
B4 = Blue(1:size(img,1)/3,size(img,2)/3:size(img,2)/3*2 );
B5 = Blue(size(img,1)/3:size(img,1)/3*2 , size(img,2)/3:size(img,2)/3*2 );
B6 = Blue(size(img,1)/3*2:size(img,1) , size(img,2)/3:size(img,2)/3*2 );
B7 = Blue(1:size(img,1)/3 , size(img,2)/3*2:size(img,2) );
B8 = Blue(size(img,1)/3:size(img,1)/3*2 , size(img,2)/3*2:size(img,2) );
B9 = Blue(size(img,1)/3*2:size(img,1) , size(img,2)/3*2:size(img,2) );

imb1 = imhist(B1);
imb2 = imhist(B2);
imb3 = imhist(B3);
imb4 = imhist(B4);
imb5 = imhist(B5);
imb6 = imhist(B6);
imb7 = imhist(B7);
imb8 = imhist(B8);
imb9 = imhist(B9);

fVec.blue1 = { sum(imb1(1:128)), sum(imb2(1:128)), sum(imb3(1:128)), sum(imb4(1:128)), sum(imb5(1:128)), sum(imb6(1:128)), sum(imb7(1:128)), sum(imb8(1:128)), sum(imb9(1:128)) };
fVec.blue2 =  { sum(imb1(129:256)), sum(imb2(129:256)), sum(imb3(129:256)), sum(imb4(129:256)), sum(imb5(129:256)), sum(imb6(129:256)), sum(imb7(129:256)), sum(imb8(129:256)), sum(imb9(129:256)) };



fVec.blue = { sum(imhist(B1)), sum(imhist(B2)), sum(imhist(B3)), sum(imhist(B4)), sum(imhist(B5)), sum(imhist(B6)), sum(imhist(B7)), sum(imhist(B8)), sum(imhist(B9)) };

end

