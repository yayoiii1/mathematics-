prompt1='Please input matrix（square） L #[1,2;3,4]';
L = input(prompt1)
d = length(L);
prompt2='Please input matrix b #[1;2]';
b = input(prompt2);
for j=1:d-1
    b(j,1)=b(j,1)/L(j,j);
    b(j+1:d)=b(j+1:d)-b(j,1)*L(j+1:d,j);
end
b(d,1)=b(d,1)/L(d,d)