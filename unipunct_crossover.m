function [c1,c2] = unipunct_crossover(p1,p2,pc)
c1=p1;
c2=p2;
r=unifrnd(0,1);
if r<pc
    [~,m]=size(p1);
    poz=unidrnd(m);
    c1(poz:m)=p2(poz:m);
    c2(poz:m)=p1(poz:m);
end
end

