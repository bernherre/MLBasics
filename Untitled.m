[n,m] = size(AB);    % n = (Zeilen,fila), m = (Spalten,columna)
for i=1:m
AB(i,s)= AB(i,s)/AB(r,s);
for j=1:n && i~=r 
    AB(i,j)= AB(i,j)- AB(r,j)*AB(i,j);
end
end

for k = 1:m     % Schleife über alle Zeilen
for i = 1:n     % Zweite Schleife über alle Zeilen
if max(AB(r,k))~= 1       % Wenn Zählvariable i ungleich Zählvariable k, damit wird sichergestellt, dass die Hauptdiagonale nicht eliminiert wird.
term = AB(i,k)/AB(k,k);    
for j = k:m
AB(i,j) = AB(i,j) - term*AB(k,j);    
end
end
end

temp = AB(k,k);    % k = 1; AB(k, k) = 1
for j = k:m
AB(k,j) = AB(k,j)/temp;    % AB(k,j) = 1, temp = 1 => 1
end
end
x = AB(:,m);