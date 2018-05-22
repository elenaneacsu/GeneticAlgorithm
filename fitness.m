function [cost] = fitness(a, pop, dim, freq)
sum=0;
for i=1:dim
    sum=sum+r_time(pop(i,1:2),a)*freq;
end
cost=1/sum;
end