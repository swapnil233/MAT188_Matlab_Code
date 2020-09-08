%a_rectangle = 2*pi*h;
%a_circles = 8*r^2;
%volume = pi*r^2*h;
%h = 0.002/(pi*r^2);
%area in terms of only r (radius) = 8r^2+0.004r^-1

syms x;
y = 8*x^2+0.04*x^-1;
y_prime = diff(y);
fplot(y, 'r');
grid on
hold on 
fplot(y_prime, 'b');
xlabel('Radius (r)');
ylabel('Area');