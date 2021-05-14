function x = kubische(t0,s0)
m=length(t0);
h=zeros(3*m); b=zeros(1,3*m);
ha=@(t,a) (t-a)^3;
hb=@(t,a) (t-a)^2;
hc=@(t,a) (t-a);
hsa=@(t,a) 3*(t-a)^2;
hsb=@(t,a) 2*(t-a);
hsc= 1;
hssa=@(t,a) 6*(t-a);
hssb = 2;
for k=1:m-1
    for i=1:m-1
             for g=k:m-2
        h(k,3*g-2)=ha(t0(i+1),t0(i));
        h(k,3*g-1)=hb(t0(i+1),t0(i));
        h(k,3*g)=hc(t0(i+1),t0(i));
        b(i)=s0(i+1)-s0(i);
            
        h(k+m,3*g-2)=hsa(t0(i+1),t0(i));
        h(k+m,3*g-1)=hsb(t0(i+1),t0(i));
        h(k+m,3*g)=hsc;
        
        h(k,4)=-hsa(t0(i+1),t0(i+1));
        h(k,5)=-hsb(t0(i+1),t0(i+1));
        h(k,6)=-hsc;
        
        h(k+2*m,1)=hssa(t0(i+1),t0(i));
        h(k+2*m,2)=hssb;
        
        h(k+2*m,4)=-hsa(t0(i+1),t0(i+1));
        h(k+2*m,5)=-hssb;
    end
    end
end

        x=h/b;
        
        
        
