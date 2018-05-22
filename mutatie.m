function [descM] = mutatie(desc,pm,a,b,sigma,freq)
[dim,~]=size(desc);
descM=desc;
for i=1:dim
    d=fluaj_int(desc(i,1:2),a,b,sigma,pm);
    descM(i,1:2)=d;
    descM(i,3)=fitness(d,desc,dim,freq(i));
end
end