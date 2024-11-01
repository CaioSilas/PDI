
a= [0 0 0 0 0 0 0 0;
    0 0 0 1 1 1 1 0;
    0 0 0 1 1 1 1 0;
    0 1 1 1 1 1 1 0;
    0 1 1 1 1 1 1 0;
    0 1 1 1 1 0 0 0;
    0 1 1 1 1 0 0 0;
    0 0 0 0 0 0 0 0]

b= [0 1 0;
    1 1 1;
    0 1 0]

e1 = imerode(a,b)
e2 = imdilate(a,b)
abertura = imopen(a,b)
fecho = imclose(a,b)