A=[4,8;2 1; 1 1];
f=[5 5];
[ff,cf]=size(f);
[z,c]=size(A);
I=eye(z);
b=[32,10,2];
AB = horzcat(A,I,b')
[zzz sss]=size(AB)
for cf=cf:sss-1
f=horzcat(f,0)
[ff,cf]=size(f)
display(f);
end
ABB=vertcat(AB,f)

H=[];
P=[];
s=0;  
r=0;
[n,m] = size(ABB);    % n = (Zeilen,fila), m = (Spalten,columna)
if m<n
    for v=1:m
for t=1:c
    [P(t,1*v) P(t,2*v)]= max(ABB(:,t))
    
    for n1 = 1:sss
        for n2 = 1:zzz
            if ABB(n2,n1) == P(t,1*v)
    s = n1
            end
        end
    end
    for j=1:z 
    H(j,s)= ABB(j,sss)/ABB(j,s)
    end
    [P(t,3*v) P(t,4*v)]= min(H(:,t))
    r = P(t,4*v)
end
display(r)
display(s)
for i=1:n %stellt ein pivot 
    g = AB(i,s) % Element aus i Zeile zum GaussJordan
    if AB(r,s)~=0
    for j=1:m 
    AB(r,j)= AB(r,j)/AB(r,s); %Festellen ein Pivot
    if i~=r % NIcht null
    AB(i,j)= AB(i,j)-g*AB(r,j);
    end
    end
end
end
    end
else
     for v=1:n
for t=1:c
    [P(t,1*v) P(t,2*v)]= max(ABB(:,t))
  
    for n1 = 1:sss
        for n2 = 1:zzz
            if ABB(n2,n1) == P(t,1*v)
    s = n1
            end
        end
    end
    for j=1:z 
    H(j,s)= ABB(j,sss)/ABB(j,s)
    end
    [P(t,3*v) P(t,4*v)]= min(H(:,t))
    r = P(t,4*v)
end

J=GaussJordanBHO(ABB,r,s);
    end    
      
     end
end
x = ABB(:,m);
display(ABB)