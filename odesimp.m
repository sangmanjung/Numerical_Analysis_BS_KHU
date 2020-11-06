function yend = odesimp(dydt, dt, ti, tf, yi,m,cd)
t = ti; y = yi; h = dt;
while (1)
if t + dt > tf, h = tf - t; end
y = y + dydt(y,m,cd) * h;
t = t + h;
if t >= tf, break, end
end
yend = y;