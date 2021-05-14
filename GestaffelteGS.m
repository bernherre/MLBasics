function Y = GestaffelteGS(A,b) 
[n,m]=size(A);
a =length(b);
if a == n;
Y=zeros(m,1);
    if 1==istril(A)
    for i=1:n
        for j=i-1:-1:1
            Y(1)=b(1)/A(1,1);
            Y(i)=(b(i)-A(i,j)*Y(j))/A(i,i);
        end
    end
    elseif    1==istriu(A)
    
        for g = n:-1:1
            for k=g+1:n

                b(g) = b(g) - A(g,k) * Y(k);
            end
     Y(g)= b(g)/A(g,g);
        end
        
        
    end  
end