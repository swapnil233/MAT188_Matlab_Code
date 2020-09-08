a=0;
x = linspace(0,5,101);

for i=1:0.1:2
    a = i;
    y = (1000/a)*exp(0.5*a*x);
    plot(x,y);
    hold on
    grid on
end

xlabel('TIme (hours)');
ylabel('Bacteria Population, P(t)');
ylim([0,10*10^4]);
legend('a = 1.0', 'a = 1.1','a = 1.2','a = 1.3','a = 1.4','a = 1.5','a = 1.6','a = 1.7','a = 1.8','a = 1.9','a = 2' );
