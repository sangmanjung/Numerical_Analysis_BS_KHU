function dy=dydtsys(t,y,a,b,c,d)
dy=[a*y(1)-b*y(1)*y(2); -c*y(2)+d*y(1)*y(2)];
