function[L]= cholesky(A) 
    [n]=size(A,1); 
    L=zeros(n); 
    b=0; 
    L(1,1)=sqrt(A(1,1)); 
    for k=2:n 
        for i=k:n 
            for j=1:k-1 
                b= b + L(i,j)*L(k-1,j); 
            end 
            L(i,k-1)=(A(i,k-1)-b)/L(k-1,k-1); 
            b=0; 
        end 
         
        for e= 1:k-1 
           b= b + L(k,e); 
        end 
         L(k,k)=sqrt(A(k,k)-(L(k,e)^2)); 
        b=0; 
    end