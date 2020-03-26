% Bifurcation diagram for Problem 6
% Written by Stacy Brenes 3/26/2019,

clear all;
close all;

xvals = []; 
beta = 0.4;
for alpha = 0: 0.005:1.25
    z = [0,0]; 
    for i = 1:2000
        zNew = henon(z(1), z(2), alpha, beta);
        z = zNew; 
    end
    
    zss=zNew;
    
    for i = 1:1000
        zNew = henon(z(1), z(2), alpha, beta);
        z = zNew;
        xvals(1, length(xvals) + 1) = alpha ;
        xvals(2, length(xvals)) = zNew(1);
      
        if (abs(zNew - zss) < 0.001)
            break
        end 
    end
end

plot(xvals(1,:), xvals(2,:), '.', 'LineWidth', 0.1, 'MarkerSize', 1);
set(gcf,'color','w');
set(gca,'linewidth',1.5)
xlabel('\alpha');
title('Bifurcation Diagram for Henon Map');
