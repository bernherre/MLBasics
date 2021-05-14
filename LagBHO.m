function [pol] = LagBHO(a,b,n)%Lagrange Interpolation
xl=b-a;
xTeil=(b-a)/(n-1);
xs=a:xTeil:b;
syms x;
%Bestimmen X
%n = length(xs);
%Vergleich X zu Y
%if length(ys)~= n, error('x und y muss die gleiche Dimension haben');end
yi=0; pol='';
    %Rechnen die n-Faktoren    
   
for i=1:n
        %Jeder Faktor kommt aus die Produkte (x/xj)/(xi-xj)
%produkt=1;
term = '';
    for j=1:n
        if i~=j
        produkt=(x-xs(j))/(xs(i)-xs(j));
        term=strcat(term,'*(x - ',num2str(xs(j)),')/(',...
        num2str(xs(i)),' - ',num2str(xs(j)),')');
        end
    end
%Rechnen jetzt Wert von yi
%yi=yi+produkt;
pol=strcat(pol,'Term n-',term);
end
