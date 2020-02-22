function y=graphFunction(x)
  
%   Logistic Equation
%     y = 3.5*x.*(1-x);

%   Composed Logistic Equation
%     f= 3.5*x.*(1-x);
%     y= 3.5*f.*(1-f);
% 
%   Tent Map
%     y= 3.5*f*(1-f);

%   Circle Map
    y =mod(3*x, 1);  
 
end