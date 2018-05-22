function [popE] = evaluatePop(pop, freq)
popE=pop;
[dim, ~]=size(pop);
for i=1:dim
    popE(i, 3)=fitness(pop(i, 1:2), pop, dim, freq(i));
end
end