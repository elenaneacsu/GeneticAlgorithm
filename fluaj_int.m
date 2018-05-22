function [y] = fluaj_int(x,a,b,sigma,pm)
y=x;
for i=1:2
    r=unifrnd(0,1);
    if r<pm
        R=fix(normrnd(0,sigma));
        y(i)=R+y(i);
        if y(i)<a
            y(i)=a;
        end
        if y(i)>b
            y(i)=b;
        end
    end
end
    
end

