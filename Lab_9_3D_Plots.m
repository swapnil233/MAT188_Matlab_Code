clear all
domain_x = [-2:0.1:2]; 
domain_y = [-2:0.1:2];

[X,Y] = meshgrid(domain_x, domain_y);

Z = X.*exp((-X.^2)-(Y.^2));
    
figure 
surfc(X, Y, Z); %contour graph (shows min and max area)
xlabel('x');ylabel('y');zlabel('g(x,y) = xe^{-x^{2}-y^{2}}');
title('Plot of g(x,y) = xe^{-x^{2}-y^{2}}');

figure
%i)
plot(domain_x,Z(1,:),'b-'); hold on %g(x,-2)

%ii)
plot(domain_x, Z(10,:),'r-'); %g(x,0) 

%iii)
plot(Z(:,2),domain_y,'k-'); %g(-1,y)

xlabel('x');ylabel('y');
title('Plot of g(x,y) at specified points');
legend('i) g(x,-2)', 'ii) g(x,0)', 'iii) g(-1,y)');

%The max and min values of the graph, without any (x,y) coords
maximum = max(max(Z(:))); %0.4288
minimum = min(min(Z(:))); %-0.4288

%Minimum:
[M,N]=find(Z==minimum); %Finds the indices of the min point within Z
minCoordinateX = X(M,N) %finds the x-coord of the min pnt
minCoordinateY = Y(M,N) %finds the y-coord of the min pnt 
minCoordinateZ = min(min(Z(:))) %Z-coord of the min pnt, which is the min

%Maximum:
[O,P]=find(Z==maximum); %Finds the indices of the max point within Z
maxCoordinateX = X(O,P) %finds the x-coord of the max pnt
maxCoordinateY = Y(O,P) %finds the y-coord of the max pnt
maxCoordinateZ = max(max(Z(:))) %Z-coord of the max pnt, which is the max

%Summary: 
%-------max = 0.4288, at (X,Y,Z)=(0.7, 0, 0.4288)
%-------min = -0.4288, at (X,Y,Z)=(-0.7, 0, 0.4288)






