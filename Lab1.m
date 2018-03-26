fileID = fopen('data.txt');
data = transpose(reshape(fscanf(fileID,'%c ')-48, [200,60]));
fclose(fileID);

% Calculate the sum of each row. Humans tend to believe that it should be 
% well distributed among the two numbers
sumOfRows = sum(data,2);
counter = 1;
for i = 1:length(sumOfRows)
    if sumOfRows(i) > 110 || sumOfRows(i) < 90
        indices(counter) = i;
        counter = counter + 1;
    end
end

% Calculate the number of maximum sequence of the same number in each row.
% Humans believe that the same number should not happen too often after
% each other.
max = zeros([60,1]);
for r = 1:size(data,1)
    for i = 1:length(data)-1
        locMax = 0;
        for j = i:length(data)-1
            if data(r,j) == data(r, j+1)
                locMax = locMax + 1;
            else
                i = j;
                break;
            end
        end
        if locMax > max(r)
            max(r) = locMax;
        end
    end
end

nrOfLongSequences = 0;
nrOfDefinitiveRobots = 0;
for i = 1:length(max)
    if max(i) > 7
        nrOfLongSequences = nrOfLongSequences+1;
        for j = 1:length(indices)
            if i == indices(j)
                nrOfDefinitiveRobots = nrOfDefinitiveRobots +1;
            end
        end
    end
end
