function [R,L]=LR(A)
n=size(A,1);
R=zeros(n);
L=zeros(n);
R(1,:)=A(1,:);
L(:,1)=A(:,1)/R(1,1);
for j=2:n
    L(j,j)=1;
for i=j+1:n
    R(j,:)=A(j,:)-L(j,j-1)*R(j-1,:);
    L(i,j)=A(i,j)-L(i,j-1)*R(j-1,j);
     L(i,j)=L(i,j)/R(j,j);
   
end   
end
end
