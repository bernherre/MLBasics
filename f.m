function y= k(t)
if  0 <= t & t < 4
    k = 2;
elseif 4 < t & t <= 6
    k = 2+4*(t-4);
elseif  t >  6
    k = 10;
end
end
