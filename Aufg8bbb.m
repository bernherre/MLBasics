function [a,x,error]=SimplexBHO(P,b,q)
%Matrix bestimmen
[ff,cf]=size(q);
[z,c]=size(P);
I=eye(z);
AB = horzcat(P,I,b');
[zzz sss]=size(AB);
for cf=cf:sss-1
q=horzcat(q,0);
[ff,cf]=size(q);
display(q)
end
ABB=vertcat(AB,q);
[n,m] = size(ABB);
        
H=[];
P=[];
if m >n 
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
display(r)
display(s)
    % n = (Zeilen,fila), m = (Spalten,columna)
J=GaussJordanBHO(ABB,r,s);
    end
else     
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
J=GaussJordanBHO(ABB,r,s);
    end
end
