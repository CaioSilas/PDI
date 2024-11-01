% Estudar 
A= [0 0 0 0 0 0 0 0;
    0 0 0 1 1 1 1 0;
    0 0 0 1 1 1 1 0;
    0 1 1 1 1 1 1 0;
    0 1 1 1 1 1 1 0;
    0 1 1 1 1 0 0 0;
    0 1 1 1 1 0 0 0;
    0 0 0 0 0 0 0 0];

%Structuring element
B=[1 1 1 1 1 1 1;];
C=padarray(A,[0 3]);
D=false(size(A));
for i=1:size(C,1)
    for j=1:size(C,2)-6
        D(i,j)=sum(B&C(i,j:j+6));
    end
end
