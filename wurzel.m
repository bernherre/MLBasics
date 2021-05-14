function [x,n,error] = wurzel(a, tau)
    %WURZEL  x = wurzel(a) berechnet die Quadratwurzel von a
    %        mit dem Newtonverfahren
     %       error = differenz zwischen die Newton-Verfahren und wurzel von a
     %       n = nte-Iteration, wo das Konvergenzkriterium genug ist
    x = 1; xalt = inf; n = 0; 
    if nargin == 1, tau = eps; end
    while abs(x - xalt) > 10^tau, %das Konvergenzkriterium
        xalt = x;
        x = (x + a/x)/2; %Iteration
        n = n+1;
    end
    error = sqrt(a)-x;