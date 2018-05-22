function [p,q] = rang_ln(dim, s)
p=zeros(1,dim);
for i=1:dim
    p(1,i)=(2-s)/dim+(2*i*(s-1))/(dim*(dim+1));
end
s=sum(p);
p=p/s;
q=zeros(1,dim);
q(1)=p(1);
for i=2:dim
    q(1,i)=q(i-1)+p(i);
end
end