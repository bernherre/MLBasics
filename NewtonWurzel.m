function [x_neu,error]=NewtonWurzel(x_alt,nexp)
% Berechnung der n-ten Wurzel aus c mit c>=0
% x_alt: Startwert
% ITMAX: Maximale Anzahl der Iterationen
% eps: Genauigkeit, breche ab wenn Betrag von 
%      x_neu-x_alt<eps ist.
k=0;
ITMAX=30;
while k < ITMAX
     x = x_alt;
        x = (x + x_alt/x)/2;
        if(abs(x-x_alt)<=10^nexp)
        break;
        end
    x_neu = x;
    k=k+1;
    error = sqrt(x_alt)-x_neu;
end
 