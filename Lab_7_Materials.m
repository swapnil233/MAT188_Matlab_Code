%Givens:
%Force P = 90kN
%d, distance from A to P, can be between (and including) 0m to 16m.
%None of the bars elongate more than 0.1% of their original length

%Aluminum Alloy 1100:
    %E = 75x10^9 Pa
    %d = 2740kg/m^3
    
%Nickel 200:
    %E = 209x10^9 Pa
    %d = 8890kg/m^3
    
%Steel Alloy:
    %E = 197x10^9 Pa
    %d = 7850kg/m^3
    
    
    %lets try aluminum:
    for d = 0.0:1.0:16.0
        A = [1 1 1; 0 10 16; 0.1256 -0.3429 0.2143];
        B = [90000 90000*d 0];
        x = A/B
        plot(d,x(1),'r*')
        hold on  
        plot(d,x(2),'b*')
        hold on
        plot(d,x(3),'g*')
        hold on
        title('Change in d Vs Force on Members');
        xlabel('d distance (m)');
        ylabel('Force on Members (N)');
        legend('Force on Member AD', 'Force on Member BE','Force on Member GC');
    end 

    
    
    

    
    
    
    
    
    
    
    
    
    
 





















