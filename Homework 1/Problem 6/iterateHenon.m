function h = iterateHenon(x0,y0,a,b,N)
    
    %find first iterate of the henon map
    z = henon(x0,y0,a,b);
    
    %initialize the trajectory vectors
    trajX = zeros(N, 1);
    trajY = zeros(N, 1);
    
    for i = 1:N 
        trajX(i) = z(1);
        trajY(i) = z(2);
        iteratedZ =  henon(z(1),z(2),a,b);
        z = iteratedZ;
        
        disp(z);
    end
    plot(trajX, trajY, '*', 'LineWidth', 1, 'MarkerSize', 5);
    set(gcf,'color','w');
    set(gca,'linewidth',1.5)
    xlabel('x');
    ylabel('y');
    title('Henon Map');
end

