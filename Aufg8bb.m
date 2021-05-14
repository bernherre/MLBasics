A=[2,1;3 4; 5 6];
f=[1 2 3];
[ff,cf]=size(f);
[z,c]=size(A);
I=eye(z);
b=[4,8,3];
AB = horzcat(A,I,b')
[zzz sss]=size(AB)
for cf=cf:sss-1
f=horzcat(f,0)
[ff,cf]=size(f)
display(f);
end
ABB=vertcat(AB,f)
[n,m] = size(ABB);
        
H=[];
P=[];
for t=1:c
    [P(t,1) P(t,2)]= max(ABB(:,t))
    for n1 = 1:sss
        for n2 = 1:zzz
            if ABB(n2,n1) == P(t,1)
    s = n1
            end
        end
    end
    for j=1:z 
    H(j,s)= ABB(j,sss)/ABB(j,s)
    end
    [P(t,3) P(t,4)]= min(H(:,t))
    r = P(t,4)
end
display(r)
display(s)

J=GaussJordanBHO(ABB,r,s);

x = ABB(:,m);
display(ABB)