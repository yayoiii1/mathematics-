prompt1='Please input matrix（square） U #[1,2;3,4]';
U = input(prompt1)
d = ndims(U);
prompt2='Please input matrix y #[1,2]';
y = input(prompt2);
for j=d:-1:2
    y(j,1)=y(j,1)/U(j,j);
    y(1:j-1)=y(1:j-1)-y(j)*U(1:j-1,j);
end
y(1)=y(1)/U(1,1)
