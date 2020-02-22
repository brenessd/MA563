function cobweb(f, a, b, x0, N, i, z)
    x = linspace(a,b, N); 
    y = f(x);
  
    figure(i)
    
    hold on 
    plot(x,y,'k', 'LineWidth', 1.5);
    plot(x,x,'r', 'LineWidth', 1.5);
    
    xlabel('x_n');
    ylabel('x_{n+1}');
    title('Cobweb for Logistic Map');
    
    x(1) = x0;
    line([x(1),x(1)], [0, f(x(1))], 'LineWidth', 1.25);
    line([x(1),f(x(1))], [f(x(1)), f(x(1))], 'LineWidth', 1.25);
    
    for j = 1:N
        x(j+1) = f(x(j));
        line([x(j+1),x(j+1)], [x(j+1), f(x(j+1))], 'LineWidth', 1.25);
        line([x(j+1),f(x(j+1))], [f(x(j+1)), f(x(j+1))], 'LineWidth', 1.25);
        
    end
    
    set(gcf,'color','w');
    set(gca,'linewidth',1.5)
    hold off
end
    
  

    