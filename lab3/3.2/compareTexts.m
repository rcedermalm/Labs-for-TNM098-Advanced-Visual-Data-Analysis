function [sameSentences] = compareTexts(text1, text2)

    counter = 1;
    for i = 1:length(text1)
        for j = 1:length(text2)
            if(strcmp(text1(i),text2(j)))
                sameSentences(counter) = text1(i);
                counter = counter +1;
            end   
        end
    end
end

