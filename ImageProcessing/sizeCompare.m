%Sample Program for comparison of sizes

I = imread('D:\matlab files\img\grade 2.bmp');
gray = rgb2gray(I);

bw = im2bw(gray, 0.09);
%bw = im2bw(gray, graythresh(gray));

%either can be used. In case of first one value has to be changed depending on the image 

cont = Contourfn(bw);

%centroid using inbuilt function
c1 = regionprops(cont,'centroid');
c1 = c1.Centroid;

%centroid using formula
c2 = Centroidfn(cont);

%diameter using formula inbuilt
[dmean, dmedian]= Diameterfn(cont,c1);

[dlidar, chord] = Endptfn(cont, c1);

%contour points
[a b]= find(cont ==1);
contpoints = [b a];
%diameter through total area
totarea = 0;
for i = 1:size(bw,1)
    for j = 1:size(bw,2)
        if(bw(i,j)==1)
            totarea = totarea + 1;
        end
    end
end
darea = totarea*4 /pi;
darea = nthroot(darea,2);

%diameter through perimeter
perimeter = regionprops(cont, 'perimeter');
dperi = perimeter.Perimeter(1)/pi;

d(2,:) = [dlidar chord dmean dmedian darea dperi];

