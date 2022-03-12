prompt1='Please input symmetric positive matrix A';
A = input(prompt1)
d = length(A);
P=zeros(d,d);
for i = 1:d
    for l = 1:d
        P(i,l) = A(i,l);
    end
end
% P为原矩阵
for j = 1:d
    for i=1:j-1
        v(i) = A(j,i)*A(i,i);
    end
    A(j,j)=A(j,j)-A(j,1:j-1)*v(i:j-1);
    A(j+1:n,j) = (A(j+1:d,j)-A(j+1:d,1:j-1)*v(1:j-1)/A(j,j));
end
A