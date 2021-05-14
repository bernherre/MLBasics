A=[2,1;3 4; 5 6];
f=[1 2 3];
[ff,cf]=size(f);
[z,c]=size(A);
I=eye(z);
b=[4,8,3];
AB = horzcat(A,I,b')
[zzz sss]=size(AB)
for cf=cf:sss-1
f=horzcat(f,0)
[ff,cf]=size(f)
display(f);
end
ABB=vertcat(AB,f)

for g=1:z
H=[];
for i=1:c
for j=1:z 
H(j,i)= ABB(j,sss)/ABB(j,i)
end
end
P=[];
for t=1:c
    [P(t,1*g) P(t,2*g)]= max(ABB(:,t))
    [P(t,3*g) P(t,4*g)]= min(H(:,t))
end 
r= max(P(:,1*g))
s= min(P(:,3*g))

[n,m] = size(ABB);    % n = (Zeilen,fila), m = (Spalten,columna)
for k = r:s     % Schleife über alle Zeilen
for i = 1:n     % Zweite Schleife über alle Zeilen
if i ~= k         % Wenn Zählvariable i ungleich Zählvariable k, damit wird sichergestellt, dass die Hauptdiagonale nicht eliminiert wird.
term = ABB(i,k)/ABB(k,k);       % Im ersten behandelten Fall liegt vor: i = 2, k = 1 -> AB(i, k) = 4 und AB(k,k) = 1 => term = 4
for j = k:m
AB(i,j) = ABB(i,j) - term*ABB(k,j);    %Im ersten behandelten Fall liegt vor: i = 2, j = k = 1 -> AB(i, j) = 4, AB(k,j) = 1 => neue AB(i,j) =4 - 4*1 = 0
end
end
end

temp = ABB(k,k);    % k = 1; AB(k, k) = 1
for j = k:m
AB(k,j) = ABB(k,j)/temp;    % AB(k,j) = 1, temp = 1 => 1
end
end
x = ABB(:,m);
end
display(ABB)