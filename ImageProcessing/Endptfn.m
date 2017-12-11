% Finding endpoints of the diameter on the contour image, and then finding the length of the diameter and chord.

function [ actualdiameter,chordlength ] = Endptfn( a1,centroid )


x = 455 - size(a1,1);
y = 455 - size(a1,2);

[a b]= find(a1 ==1);
contpoints = [b a];


fp = padarray(a1, [x y],'replicate','post');
% size is 455*455

x = 455:-1:1;
y = ones(1,455)*455;
z = 1:1:455;
v = 0.0125:0.0125:1;
% figure,imshow(fp);
% hold on;
for i = 1:800
    V = y - v(i)*z;
    X1 = [x' round(V)'];
    common1 = intersect(X1, contpoints,'rows');   
    if numel(common1)>1
        break
    end
end
% h = plot(x,y-v(i)*z,'Color','r');


% hold on;
x = ones(1,455)*455;
y = 455:-1:1;
z = 1:455;
v = 0.0125:0.0125:1;

for i = 1:800
    V = x - v(i)*z;
    Y1 = [round(V)' y'];
    common2 = intersect(Y1, contpoints,'rows');
    if numel(common2)>1
        break;
    end
end

% h = plot(x-v(i)*z,y,'Color','r');

endpt1 = mean(common1);
endpt2 = mean(common2);
% hold on;
x = [endpt1(1) endpt2(1)];
y = [endpt1(2) endpt2(2)];
% line(x,y);

x = [endpt1(1) centroid(1)];
y = [endpt1(2) centroid(2)];
% line(x,y);


x = [endpt2(1) centroid(1)];
y = [endpt2(2) centroid(2)];
% line(x,y);

chordlength = pdist2(endpt1,endpt2); % chord length

actualdiameter = pdist2(endpt1,centroid) + pdist2(endpt2,centroid);

end


