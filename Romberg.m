% This function construct Romberg table and estimate its errors.
% 'a' and 'b' are the starting and ending point of integration and 
% 'b' should be greater than 'a'.
% The given function is defined in the separated function called 'fx'.
function Romberg (a,b)
 
format long;
 
% the number of sub-intervals
n = [1,2,4,8,16,32,64,128];
 
Nn = length(n);
 
rep = 0;
% Loop for the number of sub-intervals
for i = 1:Nn,
    rep = rep + 1;
 
    ni = n(i);
    h = (b-a)/ni;  % Obtain h
 
    fxsum(i) = 0.D0;
    if (rep == 1), % The first column of Romberg table
       for j = 1:ni+1,
           xj = a + (j-1)*h;
           if (j == 1) | (j == ni+1),
              fxj = 0.5D0*fx(xj);
           else 
	      fxj = fx(xj);
	   end;
	      fxsum(i) = fxsum(i) + fxj;
       end;
    else 
    % Since we already have the values of the previous column in Romberg table,
    % we don't have to calculate the given function at even points!!
       for j = 1:ni+1,
           if (mod((j-1),2) ~= 0),
              xj = a + (j-1)*h;
	      if (j == 1) | (j == ni+1),
	         error ('fx is calculated at a wrong point!!');
       	      else 
	         fxj = fx(xj);
	      end;
	      fxsum(i) = fxsum(i) + fxj;
	   end;
       end;
       % Now, combine the obtained summation over the odd points with that over the even points
       fxsum(i) = fxsum(i-1) + fxsum(i); 
    end;
    % Calculate numerical integration value
    In(i) = h*fxsum(i);
end;
 
Tb(:,1) = In; % Trap. rule corresponds to the first column of Romberg Table.
Nr = length(In); % the number of rows in Romberg table
 
for i = 2:Nr, % This loop is moving over the columns. Note that length(rows) == length(columns).
    for j = 1:Nr, % This loop is moving over the rows.
        if (j < i),
           Tb(j,i) = 0.D0;
        else
           num = 2.D0^(2.D0*(i-1))*Tb(j,i-1) - Tb(j-1,i-1);
           den = 2.D0^(2.D0*(i-1)) - 1;
           Tb(j,i) = num/den;
        end;
    end;
end;
 
Tb % Romberg Table	
I = 1.317902151454404; % exact integration value.
 
En = abs(I - Tb) % Error of Romberg Table
 
function fxi = fx(x)
 
if (x == 0),
   fxi = 1;
else
   fxi = (1/x)*(exp(x)-1);
end;