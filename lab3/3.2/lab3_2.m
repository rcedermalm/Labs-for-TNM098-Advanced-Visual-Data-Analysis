
for i = 1:10
    filename = strcat(pad(num2str(i), 2, 'left', '0'), '.txt');
    texts(i).text = formatText(fileread(filename));
end

% for i = 1:9
%     for j = i+1:10
%         compareTexts(texts(i).text, texts(j).text)
%         i,j
%     end
% end

paragraph = compareTexts(texts(2).text, texts(8).text)
% Dr. Rutherford was pacing, with surgical precision, up and down my den.
% He looked slightly more self-possessed than the day before and seemed
% to be in excellent physical condition. I guessed at the contour beneath
% my wadded black silk dressing gown and re-considered my original
% plan to throw him bodily out of the house for having come without my
% invitation.

sentence = compareTexts(texts(2).text, texts(6).text)
% I tried out the scales and found that my involuntary host weighed
% over 195 pounds--a good deal of it around the middle.
