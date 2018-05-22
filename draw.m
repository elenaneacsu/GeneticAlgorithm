function [] = draw(pop)
[dim,~]=size(pop);
figure
i=1:dim;
plot(i, pop(:,3),"red");
grid on;
end

