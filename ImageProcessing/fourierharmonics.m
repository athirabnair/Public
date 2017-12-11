
I = imread('D:\matlab files\img\Shape\2.bmp');
gray = rgb2gray(I);
bw = im2bw(gray, 0.77);
cont = Contourfn(bw);
imshow(cont);

[a b]= find(cont==1);
cont2 = [b a];

N = 256;
x = length(cont2);
n = linspace(1,x,256);
n = floor(n);
conn1 = zeros(N,2);
for i = 1:N
    conn1(i,:) = cont2(n(i),:);
end

centroid = regionprops(cont,'centroid');
centroid = centroid.Centroid;
r1 = zeros(size(conn1,1),1);
for i = 1:size(conn1,1)
    xk = conn1(i,1);
    yk = conn1(i,2);
    r1(i,1) = hypot((xk - centroid(1)),(yk - centroid(2)));
end
 
f = zeros(11,1);

%heuristic shape separator
for u = 1:11, 
    xy = 0;
    for k = 1:N
        xy = xy + r1(k)*exp(-2*pi*(u-1)*k/N);
    end
    f(u) = 1/N *xy;
end

S1 = 0; S2=0; S3=0;
m = 1;
for l = 1:10
    S1 = S1 + f(l)*l^m;
end

m = 2;
for l = 1:10
    S2 = S2 + f(l)*l^m;
end

m = 3;
for l = 1:10
    S3 = S3 + f(l)*l^m;
end

S=[S1;S2;S3];

%Correlation coefficient:

a = corrcoef(con1 ,conc);
d(1,3) = a(1,2);
a = corrcoef(con2 ,conc);
d(2,3) = a(1,2);
a = corrcoef(con3 ,conc);
d(3,3) = a(1,2);
a = corrcoef(con4 ,conc);
d(4,3) = a(1,2);
a = corrcoef(con5 ,conc);
d(5,3) = a(1,2);
a = corrcoef(con6 ,conc);
d(6,3) = a(1,2);
a = corrcoef(con7 ,conc);
d(7,3) = a(1,2);
a = corrcoef(con8 ,conc);
d(8,3) = a(1,2);
a = corrcoef(con9 ,conc);
d(9,3) = a(1,2);
a = corrcoef(con10 ,conc);
d(10,3) = a(1,2);
a = corrcoef(con11 ,conc);
d(11,3) = a(1,2);
a = corrcoef(con12 ,conc);
d(12,3) = a(1,2);
a = corrcoef(con13 ,conc);
d(13,3) = a(1,2);
a = corrcoef(con14 ,conc);
d(14,3) = a(1,2);
a = corrcoef(con15 ,conc);
d(15,3) = a(1,2);



