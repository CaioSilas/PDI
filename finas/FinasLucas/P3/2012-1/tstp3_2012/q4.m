img = imread('letra.png');
 b = [ 0 1 0 ; 1 1 1 ; 0 1 0 ];
 a=img;
nimg = zeros(size(img));
while any(a(:))
     abertura = imopen(a, b);
      nimg = nimg | (a & ~abertura)
      a = imerode(a, b);
end
imshow(nimg)