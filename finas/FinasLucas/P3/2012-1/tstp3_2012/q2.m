
a=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
   0 0 1 1 0 1 1 1 0 1 1 1 0 0 0;
   0 0 1 1 0 1 1 1 0 1 1 1 1 0 0;
   0 0 1 1 0 1 1 1 0 1 1 1 0 0 0;
   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

b1=ones(3,3);

b2=[1 1 1 1 1; 1 0 0 0 1; 1 0 0 0 1; 1 0 0 0 1; 1 1 1 1 1 ];

%e1 = imerode(a,b1)
%e2 = imerode(~a, b2)

HM= (imerode(a,b1)) & (imerode(~a, b2))

imshow(HM)




