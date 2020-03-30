function e = henonClassification(a,b)

%find fixed points for the first henon map
h = [1 (1-b) -a]
p = roots(h)

A1 = [-2*p(1,1) -b; 1 0]
e1= eig(A1)

A2 =[-2*p(2,1) -b; 1 0]
e2 = eig(A2)

e=[e1,e2];
end

