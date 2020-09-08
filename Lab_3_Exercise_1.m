%due saturday by 11:59pm
syms t;
f(t)=-2*(t-2)^3+3*(t-2)+1;

fplot(f(t),[0,4])
grid on
hold on
fplot(diff(f),[0,4])
title('Drone Position & Velocity')
ylabel('Altitude (m)')
xlabel('Time (s)')
legend ('Position','Velocity');
