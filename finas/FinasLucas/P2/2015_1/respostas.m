% 2 IMCOMPLETO!

img = imread('lenna.jpg','jpg');
img = rgb2gray(img);

mask = fspecial('average',[5 5]);
[m, ~] = size(mask);
pad_size = floor(m/2);
[m,n] = size(img);
nimg = ones(m+pad_size*2,n+pad_size*2);
[m,n] = size(nimg);
nimg(1+pad_size:m-pad_size,1+pad_size:n-pad_size) = img(:,:);
nimg = uint8(nimg);
imshow(nimg);

[m,n] = size(img);
pad = img(:,1:2);%img(:,n-1:n)];

for i=2:pad_size
    for j=2:pad_size
        
    end
end

% 3

img = imread('lenna.jpg','jpg');
k = 3;
m = 2*k-1; n = 2*k-1;
mask = zeros(m,n);
img=rgb2gray(img);
img = double(img);
nimg = img;
for i=k:size(img,1)-k
    for j=k:size(img,2)-k
        for x=1+i-k:i+k
            for y=1+j-k:j+k
                mask(x,y) = img(x,y);
            end
        end
        meds = [];
        vars = [];
        janela1 = mask(1:k,1:k);
        meds = [meds; mean(mean(janela1))];
        vars  = [vars; var(janela1(:))];
        janela2 = mask(1:k,k:n);
        meds = [meds; mean(mean(janela2))];
        vars  = [vars; var(janela2(:))];
        janela3 = mask(k:m,1:k);
        meds = [meds; mean(mean(janela3))];
        vars  = [vars; var(janela3(:))];
        janela4 = mask(k:m,k:n);
        meds = [meds; mean(mean(janela4))];
        vars  = [vars; var(janela4(:))];
        [v,pos]=min(vars);
        nimg(i,j)=meds(pos(1,1));
    end
end
nimg = uint8(nimg);
imshow(nimg);

% 4

img = imread('lenna_periodico2.png','png');
[m, n] = size(img);
fator = zeros(m,n);
for i=1:m
    for j=1:n
        fator(i,j) = -1^(i+j);
    end
end
img=double(img);
img=img.*fator;
fimg=fft2(img);
imshow(log(abs(fimg)+1),[]);

