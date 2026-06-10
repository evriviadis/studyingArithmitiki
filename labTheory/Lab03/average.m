% filename - average.m
% function - av = average(x)
% Takes as input a matrix and
% returns the average of its values
function av = average(x)
    av = sum(sum(x))/numel(x); 
end
