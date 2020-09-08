load census 
plot (cdate, pop);
p = polyfit(cdate, pop, 2);
pp = polyval(p,cdate);


grid on
hold on all
plot(cdate,pp,'--r');

a = 3.9;
b = 0.03067;
tYears = 1970:10:1990;
y = a*exp(b*tYears);
plot(tYears,y);