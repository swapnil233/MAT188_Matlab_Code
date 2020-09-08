%m = linspace(3,8,11)%3 to 8, with 11 spaces in between (therefore length 11)
%a = linspace(3,8,21)%3 to 8, with 21 spaces in between (therefore length 21)

%for i = 1:length(m)%so loops from 1 to 11
%    for j = 1:length(a)%ok so when i is 1, j loops from 1->11. Then when i=2, j loops again & it repeats till i=11
%        F(i,j) = m(i)*a(j);
%    end
%end
%For every i (there's 11), it has 21 calculations (because there's 21 j).
%11x21=231 therefore 231 calculations.

%F

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = linspace(0,10,501); %length 501
theta = linspace(0,180,401); %length 401

for i = 1:length(theta) %keep theta constant, iterate through x, repeat
    for j = 1:length(x)
        M(j,i) = x(j)*(400*cosd(theta(i)))+(3*400*sind(theta(i)));
    end
end

plot(x,M(:,1)); %0 degrees
hold on
grid on
plot(x,M(:,201), '--'); %90 degrees
plot(x,M(:,301),'-.'); %135 degrees
plot(x,M(:,401),'.-'); %180 degrees
	
label2=sprintf('%s = %2.1f %s','\theta',theta(201),'\circ');
label3=sprintf('%s = %2.1f %s','\theta',theta(301),'\circ');
label4=sprintf('%s = %2.1f %s','\theta',theta(401),'\circ');
title('Moment at A vs x length');
xlabel('x (m)');
ylabel('Moment at A (N m)');
legend(label1,label2,label3,label4);




    

















