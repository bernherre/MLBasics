function [y ta] = rkf45(f,a,b,y0,h,rtol)

% Alle die Konstanten
c30 = 3/8;
c31 = 3/32;
c32 = 9/32;
c40 = 12/13;
c41 = 1932/2197;
c42 = -7200/2197;
c43 = 7296/2197;
c51 = 439/216;
c52 = -8;
c53 = 3680/513;
c54 = -845/4104;
c61 = -8/27;
c62 = 2;
c63 = -3544/2565;
c64 = 1859/4104;
c65 = -11/40;
cw1 = 25/216;
cw3 = 1408/2565;
cw4 = 2197/4104;
cw5 = -1/5;
cz1 = 16/135;
cz3 = 6656/12825;
cz4 = 28561/56430;
cz5 = -9/50;
cz6 = 2/55;
ce1 = 1/360;
ce3 = -128/4275;
ce4 = -2197/75240;
ce5 = 1/50;
ce6 = 2/55;

% Absolute tolerance
atol = 1e-13;
alpha = 0.8;
tk = 0;
% Anfangsbedingungen 
i = 1;
ta(1) = a;
t = a;

y(1,:) = y0;
wi = y0;
% Falls ist es die letzte Iteration, dann kommt lastit = 1, andersfalls ist lastit = 0
lastit = 0;
while lastit == 0
   
    if t + 1.1*h > b
        h = b - t;
        lastit = 1;
    end;
   
    % Runge-Kutta
    k1 = f(t,wi);
    k2 = f(t + 0.25 * h, wi + 0.25*h*k1);
    k3 = f(t + c30 * h, wi + c31 * h * k1 + c32 * h * k2);
    k4 = f(t + c40 * h, wi + c41 * h * k1 + c42 * h * k2 + c43 * h * k3);
    k5 = f(t + h, wi + c51 * h * k1 + c52 * h * k2 + c53 * h * k3 + c54 * h * k4);
    k6 = f(t + 0.5 * h, wi + c61 * h * k1 + c62 * h * k2 + c63 * h * k3 + c64 * h * k4 + c65 * h * k5);
    w = wi + h * (cw1 * k1 + cw3 * k3 + cw4 * k4 + cw5 * k5);
    z = wi + h * (cz1 * k1 + cz3 * k3 + cz4 * k4 + cz5 * k5 + cz6 * k6);
    e = h * norm(ce1 * k1 + ce3 * k3 + ce4 * k4 + ce5 * k5 + ce6 * k6);
    
   
    T = 10^rtol * norm(wi) + atol;
    if e <= T % Ist hier
        t = t + h;
        h = alpha*h*(T/e)^0.2;
        i = i + 1;
        ta(i) = t;
        wi = z;
        y(i,:) = z;
        tk = 0;
    elseif tk == 0 % nicht hier fuer erstes mal an diesem Schritt
        h = alpha*h*(T/e)^0.2;
        tk = tk + 1;
        lastit = 0;
    else % nicths
        h = h / 2;
        lastit = 0;
    end;
        
end;