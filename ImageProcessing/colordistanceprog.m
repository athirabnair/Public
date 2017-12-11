%References
%Class A
i1 = imread('d:\matlab files\lda\oranges\2a.bmp');
i1 = fruitfilter(i1);
hsv1 = rgb2hsv(i1);
h1 = hsv1(:,:,1);
s1 = hsv1(:,:,2);

%Class B
i2 = imread('d:\matlab files\lda\oranges\17a.bmp');
i2 = fruitfilter(i2);
hsv2 = rgb2hsv(i2);
h2 = hsv2(:,:,1);
s2 = hsv2(:,:,2);

%Class C
i3 = imread('d:\matlab files\lda\oranges\23b.bmp');
i3 = fruitfilter(i3);
hsv3 = rgb2hsv(i3);
h3= hsv3(:,:,1);
s3 = hsv3(:,:,2);

%Class D
i4 = imread('d:\matlab files\lda\oranges\18a.bmp');
i4 = fruitfilter(i4);
hsv4 = rgb2hsv(i4);
h4= hsv4(:,:,1);
s4 = hsv4(:,:,2);


%--------------------------------#

%Samples from each class

a1 = imread('D:\matlab files\LDA\Oranges\11A.bmp');
a1 = fruitfilter(a1);
hsva1 = rgb2hsv(a1);
ha1 = hsva1(:,:,1);
sa1 = hsva1(:,:,2);

a2 = imread('D:\matlab files\LDA\Oranges\11B.bmp');
a2 = fruitfilter(a2);
hsva2 = rgb2hsv(a2);
ha2 = hsva2(:,:,1);
sa2 = hsva2(:,:,2);

a3 = imread('D:\matlab files\LDA\Oranges\11C.bmp');
a3 = fruitfilter(a3);
hsva3 = rgb2hsv(a3);
ha3 = hsva3(:,:,1);
sa3 = hsva3(:,:,2);

a4 = imread('D:\matlab files\LDA\Oranges\11D.bmp');
a4 = fruitfilter(a4);
hsva4 = rgb2hsv(a4);
ha4 = hsva4(:,:,1);
sa4 = hsva4(:,:,2);

a5 = imread('D:\matlab files\LDA\Oranges\11E.bmp');
a5 = fruitfilter(a5);
hsva5 = rgb2hsv(a5);
ha5 = hsva5(:,:,1);
sa5 = hsva5(:,:,2);


%class b
b1 = imread('D:\matlab files\LDA\Oranges\21A.bmp');
b1 = fruitfilter(b1);
hsvb1 = rgb2hsv(b1);
hb1 = hsvb1(:,:,1);
sb1 = hsvb1(:,:,2);

b2 = imread('D:\matlab files\LDA\Oranges\21B.bmp');
b2 = fruitfilter(b2);
hsvb2 = rgb2hsv(b2);
hb2 = hsvb2(:,:,1);
sb2 = hsvb2(:,:,2);

b3 = imread('D:\matlab files\LDA\Oranges\21C.bmp');
b3 = fruitfilter(b3);
hsvb3 = rgb2hsv(b3);
hb3 = hsvb3(:,:,1);
sb3 = hsvb3(:,:,2);

b4 = imread('D:\matlab files\LDA\Oranges\21D.bmp');
b4 = fruitfilter(b4);
hsvb4 = rgb2hsv(b4);
hb4 = hsvb4(:,:,1);
sb4 = hsvb4(:,:,2);

b5 = imread('D:\matlab files\LDA\Oranges\21E.bmp');
b5 = fruitfilter(b5);
hsvb5 = rgb2hsv(b5);
hb5 = hsvb5(:,:,1);
sb5 = hsvb5(:,:,2);

%class c
c1 = imread('D:\matlab files\LDA\Oranges\14A.bmp');
c1 = fruitfilter(c1);
hsvc1 = rgb2hsv(c1);
hc1 = hsvc1(:,:,1);
sc1 = hsvc1(:,:,2);

c2 = imread('D:\matlab files\LDA\Oranges\14B.bmp');
c2 = fruitfilter(c2);
hsvc2 = rgb2hsv(c2);
hc2 = hsvc2(:,:,1);
sc2 = hsvc2(:,:,2);

c3 = imread('D:\matlab files\LDA\Oranges\14C.bmp');
c3 = fruitfilter(c3);
hsvc3 = rgb2hsv(c3);
hc3 = hsvc3(:,:,1);
sc3 = hsvc3(:,:,2);

c4 = imread('D:\matlab files\LDA\Oranges\14D.bmp');
c4 = fruitfilter(c4);
hsvc4 = rgb2hsv(c4);
hc4 = hsvc4(:,:,1);
sc4 = hsvc4(:,:,2);

c5 = imread('D:\matlab files\LDA\Oranges\14E.bmp');
c5 = fruitfilter(c5);
hsvc5 = rgb2hsv(c5);
hc5 = hsvc5(:,:,1);
sc5 = hsvc5(:,:,2);

d1 = imread('D:\matlab files\LDA\Oranges\15A.bmp');
d1 = fruitfilter(d1);
hsvd1 = rgb2hsv(d1);
hd1 = hsvd1(:,:,1);
sd1 = hsvd1(:,:,2);

d2 = imread('D:\matlab files\LDA\Oranges\15B.bmp');
d2 = fruitfilter(d2);
hsvd2 = rgb2hsv(d2);
hd2 = hsvd2(:,:,1);
sd2 = hsvd2(:,:,2);

d3 = imread('D:\matlab files\LDA\Oranges\15C.bmp');
d3 = fruitfilter(d3);
hsvd3 = rgb2hsv(d3);
hd3 = hsvd3(:,:,1);
sd3 = hsvd3(:,:,2);

d4 = imread('D:\matlab files\LDA\Oranges\15D.bmp');
d4 = fruitfilter(d4);
hsvd4 = rgb2hsv(d4);
hd4 = hsvd4(:,:,1);
sd4 = hsvd4(:,:,2);

d5 = imread('D:\matlab files\LDA\Oranges\15E.bmp');
d5 = fruitfilter(d5);
hsvd5 = rgb2hsv(d5);
hd5 = hsvd5(:,:,1);
sd5 = hsvd5(:,:,2);


%------------------------------------%

d(1,1) = mean2(abs(h1 - ha1) + abs(s1 - sa1));
d(1,2) = mean2(abs(h2 - ha1) + abs(s2 - sa1));
d(1,3) = mean2(abs(h3 - ha1) + abs(s3 - sa1));
d(1,4) = mean2(abs(h4 - ha1) + abs(s4 - sa1));

d(2,1) = mean2(abs(h1 - ha2) + abs(s1 - sa2));
d(2,2) = mean2(abs(h2 - ha2) + abs(s2 - sa2));
d(2,3) = mean2(abs(h3 - ha2) + abs(s3 - sa2));
d(2,4) = mean2(abs(h4 - ha2) + abs(s4 - sa2));

d(3,1) = mean2(abs(h1 - ha3) + abs(s1 - sa3));
d(3,2) = mean2(abs(h2 - ha3) + abs(s2 - sa3));
d(3,3) = mean2(abs(h3 - ha3) + abs(s3 - sa3));
d(3,4) = mean2(abs(h4 - ha3) + abs(s4 - sa3));

d(4,1) = mean2(abs(h1 - ha4) + abs(s1 - sa4));
d(4,2) = mean2(abs(h2 - ha4) + abs(s2 - sa4));
d(4,3) = mean2(abs(h3 - ha4) + abs(s3 - sa4));
d(4,4) = mean2(abs(h4 - ha4) + abs(s4 - sa4));

d(5,1) = mean2(abs(h1 - ha5) + abs(s1 - sa5));
d(5,2) = mean2(abs(h2 - ha5) + abs(s2 - sa5));
d(5,3) = mean2(abs(h3 - ha5) + abs(s3 - sa5));
d(5,4) = mean2(abs(h4 - ha5) + abs(s4 - sa5));

%-----
d(6,1) = mean2(abs(h1 - hb1) + abs(s1 - sb1));
d(6,2) = mean2(abs(h2 - hb1) + abs(s2 - sb1));
d(6,3) = mean2(abs(h3 - hb1) + abs(s3 - sb1));
d(6,4) = mean2(abs(h4 - hb1) + abs(s4 - sb1));

d(7,1) = mean2(abs(h1 - hb2) + abs(s1 - sb2));
d(7,2) = mean2(abs(h2 - hb2) + abs(s2 - sb2));
d(7,3) = mean2(abs(h3 - hb2) + abs(s3 - sb2));
d(7,4) = mean2(abs(h4 - hb2) + abs(s4 - sb2));

d(8,1) = mean2(abs(h1 - hb3) + abs(s1 - sb3));
d(8,2) = mean2(abs(h2 - hb3) + abs(s2 - sb3));
d(8,3) = mean2(abs(h3 - hb3) + abs(s3 - sb3));
d(8,4) = mean2(abs(h4 - hb3) + abs(s4 - sb3));

d(9,1) = mean2(abs(h1 - hb4) + abs(s1 - sb4));
d(9,2) = mean2(abs(h2 - hb4) + abs(s2 - sb4));
d(9,3) = mean2(abs(h3 - hb4) + abs(s3 - sb4));
d(9,4) = mean2(abs(h4 - hb4) + abs(s4 - sb4));

d(10,1) = mean2(abs(h1 - hb5) + abs(s1 - sb5));
d(10,2) = mean2(abs(h2 - hb5) + abs(s2 - sb5));
d(10,3) = mean2(abs(h3 - hb5) + abs(s3 - sb5));
d(10,4) = mean2(abs(h4 - hb5) + abs(s4 - sb5));
%---
d(11,1) = mean2(abs(h1 - hc1) + abs(s1 - sc1));
d(11,2) = mean2(abs(h2 - hc1) + abs(s2 - sc1));
d(11,3) = mean2(abs(h3 - hc1) + abs(s3 - sc1));
d(11,4) = mean2(abs(h4 - hc1) + abs(s4 - sc1));

d(12,1) = mean2(abs(h1 - hc2) + abs(s1 - sc2));
d(12,2) = mean2(abs(h2 - hc2) + abs(s2 - sc2));
d(12,3) = mean2(abs(h3 - hc2) + abs(s3 - sc2));
d(12,4) = mean2(abs(h4 - hc2) + abs(s4 - sc2));

d(13,1) = mean2(abs(h1 - hc3) + abs(s1 - sc3));
d(13,2) = mean2(abs(h2 - hc3) + abs(s2 - sc3));
d(13,3) = mean2(abs(h3 - hc3) + abs(s3 - sc3));
d(13,4) = mean2(abs(h4 - hc3) + abs(s4 - sc3));

d(14,1) = mean2(abs(h1 - hc4) + abs(s1 - sc4));
d(14,2) = mean2(abs(h2 - hc4) + abs(s2 - sc4));
d(14,3) = mean2(abs(h3 - hc4) + abs(s3 - sc4));
d(14,4) = mean2(abs(h4 - hc4) + abs(s4 - sc4));

d(15,1) = mean2(abs(h1 - hc5) + abs(s1 - sc5));
d(15,2) = mean2(abs(h2 - hc5) + abs(s2 - sc5));
d(15,3) = mean2(abs(h3 - hc5) + abs(s3 - sc5));
d(15,4) = mean2(abs(h4 - hc5) + abs(s4 - sc5));
%-----------------
d(16,1) = mean2(abs(h1 - hd1) + abs(s1 - sd1));
d(16,2) = mean2(abs(h2 - hd1) + abs(s2 - sd1));
d(16,3) = mean2(abs(h3 - hd1) + abs(s3 - sd1));
d(16,4) = mean2(abs(h4 - hd1) + abs(s4 - sd1));

d(17,1) = mean2(abs(h1 - hd2) + abs(s1 - sd2));
d(17,2) = mean2(abs(h2 - hd2) + abs(s2 - sd2));
d(17,3) = mean2(abs(h3 - hd2) + abs(s3 - sd2));
d(17,4) = mean2(abs(h4 - hd2) + abs(s4 - sd2));

d(18,1) = mean2(abs(h1 - hd3) + abs(s1 - sd3));
d(18,2) = mean2(abs(h2 - hd3) + abs(s2 - sd3));
d(18,3) = mean2(abs(h3 - hd3) + abs(s3 - sd3));
d(18,4) = mean2(abs(h4 - hd3) + abs(s4 - sd3));

d(19,1) = mean2(abs(h1 - hd4) + abs(s1 - sd4));
d(19,2) = mean2(abs(h2 - hd4) + abs(s2 - sd4));
d(19,3) = mean2(abs(h3 - hd4) + abs(s3 - sd4));
d(19,4) = mean2(abs(h4 - hd4) + abs(s4 - sd4));

d(20,1) = mean2(abs(h1 - hd5) + abs(s1 - sd5));
d(20,2) = mean2(abs(h2 - hd5) + abs(s2 - sd5));
d(20,3) = mean2(abs(h3 - hd5) + abs(s3 - sd5));
d(20,4) = mean2(abs(h4 - hd5) + abs(s4 – sd5));



