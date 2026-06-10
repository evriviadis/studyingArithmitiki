% filename - countEven.m
% function - c = countEven(v)
% This function counts the number of even
% integers in vector v and returns the
% count in c
function c = countEven(v)
    n=length(v); 
    c = 0;
    for i=1:n
      if mod(v(i),2) == 0 % Number is even
         c = c + 1;
      end
    end
end
