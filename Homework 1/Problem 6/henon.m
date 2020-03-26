function z = henon(x0,y0,a,b)

z= zeros(2,1);
z(1) = a - x0.^2 + b*y0;
z(2) = x0;
end

