function [desc] = crossover(par, freq, pc)
desc=par;
[dim,~]=size(par);
list=zeros(dim, 2);
i=0;
while i<dim/2
    poz=unidrnd(dim,[1 2]);
    p1=min(poz);
    p2=max(poz);
    if p1<p2 && ~ismember([p1 p2],list,'rows')
        list=[list; [p1 p2]];
        [c1,c2]=unipunct_crossover(par(p1,1:2), par(p2, 1:2),pc);
        i=i+1;
        desc(2*i-1, 1:2)=c1;
        desc(2*i-1,3)=fitness(c1, par,dim,freq(i));
        desc(2*i, 1:2)=c2;
        desc(2*i,3)=fitness(c2, par,dim,freq(i));
    end
end
            
end

