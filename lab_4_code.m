hold on all
xlim([0 20]);
ylim([0 200]);

x = [0,5,10,15,20];
y = [200,152,118,93,74];
p1 = polyfit(x,y,1);

plot(x,p1);

plot(x,y);

scatter(0,200,'o', 'MarkerFaceColor', 'b');
scatter(5,152,'o', 'MarkerFaceColor', 'b');
scatter(10,118,'o', 'MarkerFaceColor', 'b');
scatter(15,93,'o', 'MarkerFaceColor', 'b');
scatter(20,74,'o', 'MarkerFaceColor', 'b');
grid on
