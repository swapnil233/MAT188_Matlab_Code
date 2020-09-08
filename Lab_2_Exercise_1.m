t = linspace(0,4,101);

a = -2*(t-2).^3;
b = 3*(t-2)+1;

y = a+b;

%finding the roots (with the coeffecients of the expanded polynomial).
% -2(t-2)^3 + 3(t-2)+1 => -2t^3 + 12t^2 - 21t + 11
p = [-2 12 -21 11];
r = roots(p);

%plotting the data
plot(t,y);
hold on
plot(r,0, 'ro');

%graph properties
grid on
title('Analysis of Drone Flight Data')
ylabel('Altitude (m)')
xlabel('Time (s)')
legend('Drone Altitude','Hover');

