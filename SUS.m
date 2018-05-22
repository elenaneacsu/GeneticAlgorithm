function [par] = SUS(pop, s)
[dim,~]=size(pop);
[~,q]=rang_ln(dim,s);
par=zeros(dim,3);
i=1;
k=1;
r=unifrnd(0,1/dim);
while k<=dim
    while r<=q(i)
        par(k,1:3)=pop(i,1:3);
        r=r+1/dim;
        k=k+1;
    end
    i=i+1;
end
end

