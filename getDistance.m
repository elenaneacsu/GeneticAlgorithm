function [dist] = getDistance(a,b)
x1=a(1);
y1=a(2);
x2=b(1);
y2=b(2);
dist=sqrt((x2-x1)^2+(y2-y1)^2);
end