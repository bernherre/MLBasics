function p = nevilleBHO(e,t,s)
%Baue die Neville
 
n = length(t)-1;        % n ist die Polynomordnung 
p = zeros(n+1,n+1); 
 
for i = 1:n+1       
  p(i,i) = s(i);     % Falls i ist gleich zu j, bestimmt das entsprechende Element nach y 
 end
for j = 1:n+1       
  for i = 1:n+1-j    
    p(i,i+j) = ((t(i+j)-e)*p(i,i+j-1) + (e-t(i))*p(i+1,i+j))/(t(i+j)-t(i));
                     % Fint jedes Element i,j mit i~=j,aus das die
                     % Neville's Algorithm benutzt
  end
 end
p = p(1,n+1);    % outputs polynom p(e)
                     % n data points at the point x0                             (6)
