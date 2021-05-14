function [x,y] = wurzelBHO(a,nexp)
    %WURZEL  x = wurzel(a) berechnet die Quadratwurzel von a
    %        mit dem Newtonverfahren
    %         y = differenz zwischen die Newton-Verfahren und wurzel von a           
    x = 1; xalt = inf; tau = 10^nexp;
    while abs(x - xalt) > tau,%Konvergenz kriterium
        xalt = x;
        x = (x + a/x)/2; %Iteration
    end
    y = sqrt(a)-x;