function [] = finalAlg(dim, n, s, a, b, sigma, pc, pm)
%n = no of gen
freq=loadData('data.txt');
pop=gen_pop(dim);
popE=evaluatePop(pop, freq);
v=zeros(1,n);
for i=1:n
    par=SUS(popE,s);
    desc=crossover(par,freq,pc);
    desc=mutatie(desc,pm,a,b,sigma,freq);
    popE=superelitism(popE,desc);
    v(i)=max(popE(:,3));
end
[~,poz]=max(popE(:,3));
disp(popE(poz,1:3));
draw(popE);
end

