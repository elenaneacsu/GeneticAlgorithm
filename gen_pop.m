function [pop] = gen_pop(dim)
pop=zeros(dim,3);
for i=1:dim
    p1=unidrnd(10);
    p2=unidrnd(10);
    pop(i, 1:2)=[p1 p2];
   
end
end

