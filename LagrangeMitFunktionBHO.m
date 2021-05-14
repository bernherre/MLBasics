function [d,p,yi,pol] = LagrangeMitFunktionBHO(a,b,n,fu)%Lagrange Interpolation
xTeil=(b-a)/(n-1);
u=a:xTeil:b;
syms x;
%Bestimmen X
yi=0; pol='0';p=0;d=1;
    %Rechnen die n-Faktoren    
   
for i=1:n
        %Jeder Faktor kommt aus die Produkte (x/xj)/(xi-xj)
produkt = 1;
term = '';
d = d*(x-u(i));
    for j=1:n
        if i~=j
        produkt = produkt*(x-u(j))/(u(i)-u(j));
        term=strcat(term,num2str(fu),'*(x-',num2str(u(j)),')/(',...
        num2str(u(i)),'-',num2str(u(j)),')');
        
        end
    end
    
%Rechnen jetzt Wert von yi

p=p+produkt*fu(i);
yi=yi+produkt;
pol=strcat(pol,'next',term);

end
p=simplify(p);

