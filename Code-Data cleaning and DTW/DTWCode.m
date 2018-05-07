clc;
clear;
person1 = 'Video2PersonA.csv';
p1 = csvread(person1);
person2 = 'Video2PersonB.csv';
p2 = csvread(person2);
person3 = 'Video2PersonC.csv';
p3 = csvread(person3);
ax = p1(:,[4:5 7:8 10:11 13:14 16:17 19:20 22:23]);
bx = p2(:,[4:5 7:8 10:11 13:14 16:17 19:20 22:23]);
cx = p3(:,[4:5 7:8 10:11 13:14 16:17 19:20 22:23]);

anormx = normc(ax);
bnormx = normc(bx);
cnormx = normc(cx);

abrx = corr2(anormx,bnormx);
bcrx = corr2(bnormx,cnormx);
acrx = corr2(anormx,cnormx);

corrx = [abrx;bcrx;acrx]


abdtwx = dtw(anormx,bnormx);
bcdtwx = dtw(bnormx,cnormx);
acdtwx = dtw(anormx,cnormx);

dtwx = [abdtwx;bcdtwx;acdtwx]
