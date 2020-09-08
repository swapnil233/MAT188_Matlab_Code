M = [];
x = linspace(0,10,501); %length 501
theta = linspace(0,180,401); %length 401

for i = 1:length(x) %keep x constant, iterate through theta, repeat
    for j = 1:length(theta)
        M(j,i) = x(i)*(400*cosd(theta(j)))+(3*400*sind(theta(j)));
    end
end
hold on
grid on

plot(theta,M(:,1)); %0m least
plot(theta,M(:,201), '--'); %4m
plot(theta,M(:,301),'-.'); %6m
plot(theta,M(:,401),'.-'); %8m
plot(theta,M(:,501),'-.'); %10m max

label1=sprintf('x = %2.1f m',x(1));
label2=sprintf('x = %2.1f m',x(201));
label3=sprintf('x = %2.1f m',x(301));
label4=sprintf('x = %2.1f m',x(401));
label5=sprintf('x = %2.1f m',x(501));

title('Moment at A vs different theta values');
xlabel('theta (degrees)');
ylabel('Moment at A (N m)');
legend(label1,label2,label3,label4,label5);







