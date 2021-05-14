function fxi = fx(x)
 
if (x == 0),
   fxi = 1;
else
   fxi = (1/x)*(exp(x)-1);
end