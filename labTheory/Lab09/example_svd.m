A = imread('film' , 'tif');
X = double(A);
[U,S,V] = svd(X);
clf;
figure(1)
imshow(A,[0,255]);
[m,n] = size(A);

% Choose number of singular values to keep
k = 20;        % try 5, 20, 50, 100,
Uk = U(:,1:k);
Sk = S(1:k,1:k);
Vk = V(:,1:k);

Icomp = Uk * Sk * Vk';

% Display the compressed image
figure(2);
clf;
imshow(Icomp,[0,255])
m
n
m+n+1
m*n
k
compress_ratio=(k*(m+n+1))/(m*n)

