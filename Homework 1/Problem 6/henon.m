function z = henon(x0,y0,a,b)

z= zeros(2,1);
z(1) = a*x0 - y0.^2;
z(2) = x0 + a*y0;
end

