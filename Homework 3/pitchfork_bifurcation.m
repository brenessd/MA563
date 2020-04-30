% Bifurcation diagram for Problem 3
% Written by Stacy Brenes 2/21/2019,
% With instruction from https://www.youtube.com/watch?v=_BvAkyuWhOI&t=513s

clear all;
close all;

xvals = []; 
for alpha = -1:0.01:2
    xold = 0.2; 
    for i = 1:2000
        xnew = xold^3 - (-1)*xold + alpha;
        xold = xnew; 
    end
    
    xss=xnew;
    
    for i = 1:1000
        xnew = xold^3 - alpha*xold +0.005;
        xold = xnew;
        xvals(1, length(xvals) + 1) = alpha ;
        xvals(2, length(xvals)) = xnew;
      
        if (abs(xnew -xss) < 0.001)
            break
        end 
    end
end

plot(xvals(1,:), xvals(2,:), '.', 'LineWidth', 0.1, 'MarkerSize', 1);
set(gcf,'color','w');
set(gca,'linewidth',1.5)
xlabel('\alpha');
title('Bifurcation Diagram for Logistic Map');
