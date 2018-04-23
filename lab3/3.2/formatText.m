function [finalStrings] = formatText(str)
str(regexp(str,'["_-]'))=[];
%str(regexp(str,"'"))=[];

str(regexp(str, ' ')) = [];
str(regexp(str, '\n')) = [];
str = lower(str);

finalStrings = split(str,{'.', '?', '!'});
finalStrings(strcmp('',finalStrings)) = [];

len = length(finalStrings)
cnt = 1;
for i = 1:len
    str = char(finalStrings(cnt));
    if(length(str) < 4)
        finalStrings(cnt) = [];
        len = length(finalStrings);
    else
        cnt= cnt+1;
    end
end

end

