A=[2,1;3 4; 5 6];
f=[1 2 3];
[ff,cf]=size(f);
[z,c]=size(A);
I=eye(z);
b=[4,8,3];
AB = horzcat(A,I,b')
r=2
s=2
[n,m] = size(AB);    % n = (Zeilen,fila), m = (Spalten,columna)
for i=1:n
    g = AB(i,s)
    for j=1:n 
    AB(r,j)= AB(r,j)/AB(r,s);
    if i~=r 
    AB(i,j)= AB(i,j)- g*AB(r,j);
    end
end

end