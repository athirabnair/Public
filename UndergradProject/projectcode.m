

img = imread('./mri/2.jpg');
k=3;

[mask,mu,u,v]=EMSeg(img,k);

rect1 = [0,0,size(img,1)/2,size(img,2)/2];
rect2 = [size(img,1)/2,0,size(img,1),size(img,2)/2];
rect3 = [0,size(img,2)/2,size(img,1)/2,size(img,2)];
rect4 = [size(img,1)/2,size(img,2)/2,size(img,1),size(img,2)];

i1 = imcrop(img, rect1);
i2 = imcrop(img, rect2);
i3 = imcrop(img, rect3);
i4 = imcrop(img, rect4);

m1 = imcrop(mask, rect1);
m2 = imcrop(mask, rect2);
m3 = imcrop(mask, rect3);
m4 = imcrop(mask, rect4);


%tree storage
t = tree('Image'); %construct tree
%t = tree(img); %root is img
[t, quad1] = t.addnode(1,'Quad1');
[t, quad2] = t.addnode(1,'Quad2');
[t, quad3] = t.addnode(1,'Quad3');
[t, quad4] = t.addnode(1,'Quad4');


%%repeat for m2,m3,m4

%m1
row = cell(k,1);
col = cell(k,1);
convex = cell(k,1);
coord = cell(k,1); %coordinates
h = cell(k,1); %histogram


%find convex hull and histogram of that region

for i=1:k
    [row{i},col{i}] = find(m1==i);
    convex{i} = convhull(row{i},col{i});
    coord{i} = [col{i}(convex{i}), row{i}(convex{i})];
    x = roipoly(i1,coord{i}(:,1),coord{i}(:,2));
    x = uint8(x);
    x(:,:,2)=x(:,:,1);
    x(:,:,3)=x(:,:,1);
    z = x.*i1;
    h{i} = rgbhist_fast(z,4);
end

%storing in tree as child of quads
leaf = zeros(4,k);
for i=1:k
    [t,leaf(1,i)] = t.addnode(quad1,{h{i}, coord{i}});%for MBRs
end


%m2
row = cell(k,1);
col = cell(k,1);
convex = cell(k,1);
coord = cell(k,1); %coordinates
h = cell(k,1); %histogram


for i=1:k
    [row{i},col{i}] = find(m2==i);
    convex{i} = convhull(row{i},col{i});
    coord{i} = [col{i}(convex{i}), row{i}(convex{i})];
    x = roipoly(i2,coord{i}(:,1),coord{i}(:,2));
    x = uint8(x);
    x(:,:,2)=x(:,:,1);
    x(:,:,3)=x(:,:,1);
    z = x.*i2;
    h{i} = rgbhist_fast(z,4);
end

%storing in tree as child of quads
for i=1:k
    [t,leaf(2,i)] = t.addnode(quad2,{h{i}, coord{i}});%for MBRs
end



%m3
row = cell(k,1);
col = cell(k,1);
convex = cell(k,1);
coord = cell(k,1); %coordinates
h = cell(k,1); %histogram


for i=1:k
    [row{i},col{i}] = find(m3==i);
    convex{i} = convhull(row{i},col{i});
    coord{i} = [col{i}(convex{i}), row{i}(convex{i})];
    x = roipoly(i3,coord{i}(:,1),coord{i}(:,2));
    x = uint8(x);
    x(:,:,2)=x(:,:,1);
    x(:,:,3)=x(:,:,1);
    z = x.*i3;
    h{i} = rgbhist_fast(z,4);
end

%storing in tree as child of quads
for i=1:k
    [t,leaf(3,i)] = t.addnode(quad3,{h{i}, coord{i}});%for MBRs
end


%m4
row = cell(k,1);
col = cell(k,1);
convex = cell(k,1);
coord = cell(k,1); %coordinates
h = cell(k,1); %histogram


for i=1:k
    [row{i},col{i}] = find(m4==i);
    convex{i} = convhull(row{i},col{i});
    coord{i} = [col{i}(convex{i}), row{i}(convex{i})];
    x = roipoly(i4,coord{i}(:,1),coord{i}(:,2));
    x = uint8(x);
    x(:,:,2)=x(:,:,1);
    x(:,:,3)=x(:,:,1);
    z = x.*i4;
    h{i} = rgbhist_fast(z,4);
end

%storing in tree as child of quads
for i=1:k
    [t,leaf(4,i)] = t.addnode(quad4,{h{i}, coord{i}});%for MBRs
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp(t.tostring);


%sample image's histogram
sampleim = imread('./mri/10.jpg');
samplereg = imcrop(sampleim);
sample = rgbhist_fast(samplereg,4);


%find distance between hist - chi squared
alldist = zeros(numel(leaf),1);
for j=1:numel(leaf)
    currenth = t.get(leaf(j));
    currenth = currenth{1};
    a = chi_square_statistics(currenth',sample');
    alldist(j) = a;
end

%find min
alldist = reshape(alldist,4,k);
mindist = min(alldist(:));
[minr,minc] = find(alldist==mindist);
match = t.get(leaf(minr,minc));
if minr==1
    imshow(i1);
elseif minr==2
    imshow(i2);
elseif minr==3
    imshow(i3);
else
    imshow(i4);
end

hold on;
plot(match{2}(:,1),match{2}(:,2),'r');