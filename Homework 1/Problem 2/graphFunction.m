
function y=graphFunction(x)
  
% A. Logistic Equation
%     y = 3.2*x.*(1-x);
% 
% B. Composed Logistic Equation
%     f= 3.5*x.*(1-x);
%     y= 3.5*f.*(1-f);

% C. Tent Map
%     y1= 2*x;
%     y2=2*(1-x);
%     if x < 1/2 
%         y=y1;
%     else 
%         y=y2;
%     end
%         

% D. Circle Map
    y =mod(3*x, 1);  
 
end