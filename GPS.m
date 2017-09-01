clear all;clc;close all;
syms x y z
D1=150;D2=130;D3=180;
P1X=-90;P1Y=10;P1Z=0;
P2X=100;P2Y=0;P2Z=0;
P3X=0;P3Y=100;P3Z=0;
PX=[P1X P2X P3X];
PY=[P1Y P2Y P3Y];
PZ=[P1Z P2Z P3Z];
%ezplot((x-P1X)^2+(y-P1Y)^2-D1^2,[-10 10 -10 10])

[b1x,b1y,b1z]=sphere(30);
B1x=b1x*D1+P1X;
B1y=b1y*D1+P1Y;
B1z=b1z*D1+P1Z;
mesh(B1x,B1y,B1z)
hold on;
hold on;
ezmesh((subs(-2*P1X+2*P2X)*x+subs(-2*P1Y+2*P2Y)*y+(P1X^2+P1Y^2+P1Z^2-D1^2))/1,[min(PX)-D1 max(PX)+D1 min(PY)-D1 max(PY)+D1 min(PZ)-D1 max(PZ)+D1])
[b2x,b2y,b2z]=sphere(30);
B2x=b2x*D2+P2X;
B2y=b2y*D2+P2Y;
B2z=b2z*D2+P2Z;
mesh(B2x,B2y,B2z)

[b3x,b3y,b3z]=sphere(30);
B3x=b3x*D3+P3X;
B3y=b3y*D3+P3Y;
B3z=b3z*D3+P3Z;
mesh(B3x,B3y,B3z)
alpha(.1);

plot3(P1X,P1Y,P1Z,'.r','MarkerSize',10);
plot3(P2X,P2Y,P2Z,'.r','MarkerSize',10);
plot3(P3X,P3Y,P3Z,'.r','MarkerSize',10);

% Ball 1 - Ball 2
%(-2*P1Z+2*P2Z)
%axis ([min(PX)-D1 max(PX)+D1 min(PY)-D1 max(PY)+D1 min(PZ)-D1 max(PZ)+D1])
%ezmesh((subs(-2*P1X+2*P2X)*x+subs(-2*P1Y+2*P2Y)*y+(P1X^2+P1Y^2+P1Z^2-D1^2))/1)