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
for k = 1 : d
    A(k,k) = sqrt(A(k,k));
    A(k+1:d,k) = A(k+1:d,k)/A(k,k);
    for j=k+1:d
        A(j:d,j) = A(j:d,j)-A(j:d,k)-A(j,k);
    end
end
A
% A为L矩阵