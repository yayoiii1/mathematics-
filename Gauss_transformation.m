prompt1='Please input vector A，例如：[1,2,3]';
A = input(prompt1)
len = length(A);
prompt2='Please input k';
k = input(prompt2)
L=eye(len,len);
for i=k+1:len
    L(i,k) = -A(i)/A(k);
end
L