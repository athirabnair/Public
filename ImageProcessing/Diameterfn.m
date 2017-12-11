function [ diameter ] = Diameterfn(cont1,centroid)

% finding diameter given centroid and image contour

[a b]= find(cont1 ==1);
cont = [b a];

for i = 1:size(cont,1)
    xk = cont(i,1);
    yk = cont(i,2);
    Rk(i,1) = hypot((xk - centroid(1)),(yk - centroid(2)));
    Rd = median(Rk);
    R = mean(Rk);
end

dmean = R*2;
dmedian = Rd*2
end

