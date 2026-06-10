% if example
A=rand(3,4);
[m, n] = size(A);
if m ~= n
   display('Matrix is not square.')
end
