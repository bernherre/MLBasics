function s = Mittelpunktsregelb(f,a,b,n)
h=(b-a)/n;
for p = 2:n;
    aa = a + h*(2*p-1);
    s = s + f(aa);
  end
