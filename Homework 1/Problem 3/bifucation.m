% Bifurcation diagram for Problem 3
% Written by Stacy Brenes 2/21/2019,
% With instruction from https://www.youtube.com/watch?v=_BvAkyuWhOI&t=513s

clear all;
close all;

xvals = []; 
for alpha = 0: 0.01: 4
    xold = 0.5; 
    for i = 1:2000
        xnew = ((xold - xold.^2).*alpha);
        xold = xnew; 
    end
    
    xss=xnew;
    
    for i = 1:1000
        xnew = ((xold - xold.^2).*alpha); 
        xold = xnew;
        xvals(1, length(xvals) + 1) = alpha ;
        xvals(2, length(xvals)) = xnew;
      
        if (abs(xnew -xss) < 0.001)
            break
        end 
    end
end

plot(xvals(1,:), xvals(2,:), '.', 'LineWidth', 0.1, 'MarkerSize', 1.2);
