prompt1='Please input matrix(square) A，例如：[1,2;3,4]';
A = input(prompt1)
d = length(A);
L=eye(d,d);
U=zeros(d,d);
for k=1:d
    for i = 1 : d-1
        c = abs(A(i:d,i));     
        [cmax,cindex] = max(c); 
        ik = cindex + i - 1;   
        if ik > i             
            for j = i:d
                l = A(i,j);
                A(i,j) = A(ik,j);
                A(ik,j) = l;
            end
        end 
        for n = k+1 : d
            L(n,k) = A(n)/A(k);
        end
    end
    for p = 1 : d
         for q = 1 : p
             U(q,p) = A(q,p);
         end
    end
end
L
U