n = input('Enter a number: ');

switch n
  case -1
    disp('negative one')
  case 0
    disp('zero')
  case 1
    disp('positive one')
  case {2,3}
    disp('two or three')
   otherwise
    disp('other value')
end
